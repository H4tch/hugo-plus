
# Introduction to Hugo-Plus
Although Hugo-plus is built on top of Hugo, it doesn't follow much of Hugo's
guidelines or conventions.

Hugo-plus allows complete customization on a per-Section basis with the ability
to fallback on a default configuration. This allows Sections to be completely
different or consistent with each other.

Having Sections under the same site instance allows Content to be shared.
For example, `Blog` Section posts can associate with a `Project`, and the Page
for that Project can aggregate those posts to show recent development.

Hugo-plus' Layout system is designed so a single template file from a list of
Components in order. This allows for quick layout changes and Component re-use.

Hugo-plus' Theme system doesn't effect the semantic information of Components.


# Sections
Sections categorize Content by its 'type' and provide the configuration used to
present it.

The Section of a Content post is determined by the folder it is stored under
or the value of its `type` field in its Front Matter.

By default, Hugo-plus provides support for `Blog`, `Series`, `Authors`,
`Projects`, `Stream`, and `Page` Sections.

The `Page` Section is used to store pages that don't fit within a typical
Section, and are marked 'meta' to hide its content from the Site's main feed.

The `Author` Section acts as a Taxonomy which allows content published by an
author to be grouped.

The configuration for a Section is stored within `data/config/SECTION.toml`.
However, by default, settings will fallback to `data/config/site.toml`.

Whereas Hugo stores all its settings within `config.toml`, Hugo-plus allows
Sections to differentiate from each other by storing all settings within its
config file, and fallbacking to the 'site' config when a parameter isn't found.

Section Configuration contain semantic settings which should persist across
theme and layout changes. These settings include Component configuration, List
properties, section metadata, and menu content. Configuration for the Index page
is defined within `data/config/home.toml`.


# Addons
An `addon` may consist of a Components, Shortcodes, and/or Layout Templates.
It may also specify configuration for a single Layout, Theme, Icon Theme, Dark
Icon Theme, and/or Plugin. A Plugin can consist of many templates, but can only
be referred to by the `addon`'s name.

Each addon type can coexist within a single addon, but may only have one
implementation. Themes, Layouts, and Plugins are referenced using the `addon`'s
name.

Addons are stored within `data/addons/NAME/`.
Template files for `addons` must be installed within `layouts/partials/TYPE/NAME/`.
Shortcodes are stored within `layouts/shortcodes/`.
Static data files that the addon utlizes need to be installed within `static/NAME_data/`.

Layouts, Components, Themes, and Plugins are configured based on a Content's
Front Matter, Section Configuration, or Site Configuration.
Configuration settings are generally designed to fallback within that order.


## Layouts
A Layout specifies the visual structure of the page, the Composition of Plugins
and Components, and the implementation file of Components.
Components are added into `layout sections`, such as `[header]`, `[section]`,
`[aside]`, and `[footer]`.

Layouts are independent of the styling and internal formatting of its components.

A Layout and its collection of Components is similar to a traditional Hugo theme.

When the main layout template is processed, it reads these Components, finds
their implementation, checks if the current Section or Site has disabled it,
and then if eveythings ok, instantiates it.

The Layout configuration is defined within `addons/NAME/layout.toml`.
See the [default layout's implementation](/addons/default/layout.toml) for reference.

[Hugo's Template Documentaiton »](http://gohugo.io/templates/overview/)


## Components
Components are small, configurable, Bootstrapped HTML templates that usually
provide just a single 'semantic' feature to the page. 

Configuration is typically stored within Section configuration under a table
with the same name as the component.

Sections may be selectively disable Components by adding the Component to the
`disabled` array within the Section Configuration. By default, if
a Component isn't within that array, it will be rendered. For this reason,
Components are best used for general semantic information that may apply
site-wide.

For example: The `navbar` component should generally be included site-wide, but
their may be custom pages that wish to disable it. These pages or sections can
either include the Component within `disabled` or change the `layout`.

All Components may be disabled by adding `all` to `disabled`


## Themes
A Hugo-Plus Theme `addon` consists of a Bootstrap CSS file, `theme.toml`, and
optionally `icons.toml` and/or `icons_dark.toml`.

Themes can be set to `is_dark` in order to choose an appropriate background
image, icon theme, plugin styling, widget instance, etc.

The Theme configuration is defined within `addons/NAME/theme.toml`.
See the [default theme's implementation](/addons/default/theme.toml) for reference.

Themes, Plugins, and Layouts may share the same name and be stored within the
same folder without conflicting as long as its data files and templates have
unique names.


## Plugins
Currently, Plugins are just a combination of Components/Shortcodes and a Plugin
config file which specifies JS and CSS dependencies. When a Plugin is enabled
using the `plugins` array in the Section config, its 

The Plugin configuration is defined within `addons/NAME/plugin.toml`.
See the [HighlighJS plugin's implementation](/addons/highlightjs/plugin.toml) for reference.


## Icons
The Icon theme can be used to change the appearence for 'social', 'follow', and
'share' icons.

The Icon Theme configuration is defined within `addons/NAME/icons.toml`.
An alternative, Dark Icon Theme is defined within `addons/NAME/icons_dark.toml`.

Its implementation is likely to change within the future.
See the [default icon theme's implementation](/addons/default/icon.toml) for reference.


## Shortcodes
Shortcodes are basically Components that can be instanced from within Content
posts. Shortcode instances are parameterized, in order to customize its
appearance, content, and functionality. HTML Code or Markdown can be passed to
the Shortcode as well.

[Hugo's Documentaiton »](http://gohugo.io/extras/shortcodes/)

### Typical Usages
```
	{{< photo src="/img/mypic.png" title="My Picture!" thumb="/img/mypic_thumb.png" >}}

	{{< spoiler text="Click to reveal text" >}} You found me! {{< /spoiler >}}

This example allows Markdown to be processed and passed in to the Shortcode:
	{{% stream text="Stream" date="" %}}
		### What is a Stream?
		* Water under the bridge
	{{% /stream %}}
```

## Included Shortcodes
* [Audio](shortcodes/audio.md) - HTML5 Audio controls widget. Embed audio files
		within the content. Supports artist and album information, thumbnail,
		and optional preloading.
* [Photo](shortcodes/photo.md) - Displays an image which can be clicked on to
		view within a lightbox.
* [Popup](shortcodes/popup.md) - Displays custom inline HTML when popup link is
		clicked on.
* [Spoiler](shortcodes/spoiler.md) - 
* [Stream](shortcodes/stream.md) - 
* [Video](shortcodes/video.md) - HTML5 video object. Embed video files within
		the content. Supports custom image placeholder.
* [Youtube](shortcodes/youtube.md) - Similar to video, but turns a youtube video
		id into an embedded widget.
* [Gallery](shortcodes/gallery.md) - Creates a gallery containing photos, videos,
		popups, or other custom inline content.

### Notes
Shortcodes are self-contained and cannot access Site, Section, or Content
confiuration. Only the parameters passed in to instantiate it.



