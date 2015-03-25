
# Theming
A Theme specifies the layout template, custom layout implementations for
	plugins, and other visual settings for each section being rendered.

A single Theme can be used for all sections while still supporting higher-level
	customizations. This allows the site to maintain a consistent layout while
	still having individually configured Sections.
Alternatively, the CSS theme, or layout can be specialized for any Section.

The Theme config file is also used to inject Plugins into pre-defined areas on
	the Layout. All Layouts should support a common baseline of these areas.

The Layout file determines the HTML structure of the page. The inner layouts,
	or components that can be inserted within pre-determined places of this structure,
	is defined by the Theme. This allows mutliple layouts to utilize the same
	Theme, meaning the component organization remains consistent. This avoids
	redundant Themes that just contain different Layout files.

### Theme Configuration Fallback Order
	* Content front matter
	* Section configuration (recommended in majority of cases)
	* Site's configuration
	* If all else fails, default to the theme `'default'`

### Layout Fallback Order
	* Content front matter
	* Section configuration
	* Theme configuration's specified layout

The following code is used within Hugo's template files and accomplishes the
	above fallback rules.
```
{{ $theme := index .Site.Data.themes (or (and (ne .Title .Site.Title) .Params.theme) (or $section.theme (or .Site.Params.theme "default"))) }}
{{ $layout := or (or (and (ne .Title .Site.Title) .Params.layout) $section.layout ) $theme.layout }}
```
(Note, the content's `.Param` setting will not override any other settings if
	the current page is the homepage.)


# Layout
Layouts control the visual structure of a page, the placement of components,
	and the areas where plugins can be injected.
A layout is implemented as an HTML/ACE Go template, but is fully parameterized
	and flexible in relation to the component and plugin configurations.


This allow control over the precise ordering of plugins and have multiple
	instances of plugins.

Layouts should be stored within `layouts/partials/layouts/`.


### Components
Components are the default Plugin set that all Layouts must support and
	pre-arrange.


## Plugins
The Theme can override Plugin implementations on a per-component basis.
However, any plugins with custom layouts should adhere to the rules and data model of the default implementation.
**(Should the default implementation handle the logic while allowing Markup injection)**
Plugin implementation should be tied to the layout not just the theme...

The string for a layout is treated as HTML code if it begins with a left angle
	bracket (`<`).
If you want to insert HTML code that doesn't begin with that bracket, you can
	insert `<HTML>` in the beginning and it will automatically be removed.

Example, note the use of a multi-line TOML string for more advance HTML
	template code.
```
layouts = [
	"<HTML><div class='voffset20'></div>",
	"layouts/default_content.html",
	"<HTML><div class='column col-xs-6'>",
	,"default/category_labels.html",
	"<HTML></div><div class='column col-xs-6'>",
	"default/tag_labels.html",
	"<HTML></div>",
]
```
Note, template code is within any embedded `<HTML>` text will not be executed.
If you have more complex HTML code, you can use multi-line strings within TOML
	by ecasing the text within 3 quotes `"""`.

# CSS Themes
Content
	css

Section
	css


