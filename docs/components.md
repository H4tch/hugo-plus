
# Components
Hugo-plus supports many components which may be selectively enabled/disabled 
	for each section.
Components are encapsulated and do not assume any specific layout structure.
This allows layout themes to reuse the components and maintain a common feature
	set and configuration options.


# Parameters
All components are disabled by default unless specified otherwise.
Note, the Content's front matter supports a subset of the parameters for componets
	which overrides the Section's settings.
This allows Content to override some of Section's components settings.
Parameters for individual components are documnented within the `docs/components`
	folder.

The following are the currently supported components which can be enabled/disabled
	by the Section's config file.

* components.date - Enable/disable the date within the content's meta section
* components.author - Enable/disable the author's name within the content's meta section
* components.series - Enable/disable the series' name within the content's meta section
* components.share_buttons - Enable/disable the share buttons for the article
* components.follow_buttons - Enable/disable the follow buttons for the author or project
* components.categories - Enable/disable the categories that the content belongs to
* components.tags - Enable/disable the tags that the content belongs to
* components.pager - Enable/disable the buttons for the next and previous content
* components.comments - Enable/disable the comments section for the component
		Can also be defined in the content's front matter for more fine-grained control.
* components.breadcrumbs - Enable/disable breadcrumbs showing the path to the
		current page. See [Breadcrumb's Documentation](components/breadcrumbs.md)
* components.carousel - Shows a carousel defined within the content or section.
		See [Carousel's Documentation](components/carousel.md).
		Setting can be overridden by content
* components.jumbotron - Shows a jumbotron defined within the content or section.
		See [Jumbotron's Documentation](components/jumbotron.md).
		Setting can be overridden by content
* components.page_header - Enable/disable the title of the page above the
		component. Note, this is not shown on content pages.
* components.navbar - todo
* components.sidebar - todo
* components.footer - todo

### Comments parameters
	* comments.on_demand - Don't autoload the comments when the page is loaded


# Components Configurable by Content
* continue_message - Customize the message after the summary to invite
		users to the full post. Ex: "Continue Reading" or "Read full story"
* components.comments - Enable/Disable the comments section for this post
* components.carousel - Shows a carousel defined within the content or section.
		See [Carousel's Documentation](components/carousel.md)
* components.jumbotron - Shows a jumbotron defined within the content or section.
		See [Jumbotron's Documentation](components/jumbotron.md)


# Example
The following will enable everything
```toml
[components]
	jumbotron = true
	carousel = true
	page_header = true
	breadcrumbs = true
	sidebar = true
	date = true
	author = true
	series = true
	toc = false
	share_buttons = true
	follow_buttons = true
	categories = true
	tags = true
	pager = true
	comments = true
```


# Notes

## Section and Component Configuration Selection
Component parameters can be defined in many different places due to its
	fallback mechansims. It does this by finding a valid 'section' configuration.
By default, there is no fallback mechanism for individual component
	parameters. This means you can't selectively enable/disable a single
	component because it breaks the fallback chain for all the settings.
	In most cases Section `components` configuration is preferred over content's.

#### Fallback rules:
* Get the `data/sections/<section_name>` file by using the page's `.Section`,
	`.Data.Singular`, or `.Title` parameter. This allows content pages, list
	pages, and the homepage to have a configuration file.
* If this file is not found, the section will be set to `.Params`.
	This allow configuration to fallback to the site's config, or the content's
	front matter parameters.
* Now that the Section configuration is found, it is time to find where the
	Component configuration is specified.
* The components configuration is found by getting `$section.components`.
* If not found, this will fallback to `.Params.components`.
* Finally, if that `components` data object isn't found it will fallback to
	`Site.Params.components`.

The following is the code used within the component templates which accomplishes
	the above fallback rules.
```
{{ $section := or (index .Site.Data.sections (or .Section (or .Data.Singular (.Title|lower)))) .Params }}
{{ $components := or (or $section.components .Params.components) .Site.Params.components }}
```

Some component configurations break this priority by favoring Content before
Section. This usually applies when the configuration customizes the content
without breaking the layout settings.

* Examples: Jumbotron, Carousel, thumbnails.


# Todo
Components that prefer Content settings over Section settings should be
separated from the settings which should be consistent across content within the section.



