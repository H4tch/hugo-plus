
A jumbotron is just a large full-width section header on the page with large
	text, a description, usually a button or two, and optionally a background
	image.

Parameters:
	* components.jumbotron - Enable/disables the jumbotron defined by the Content or Section
	* Jumbotron paramters:
		* title - Title's text
		* text - Smaller text 
		* text_color - Color to use for `title` and `text` font. Ex. `#EEE`
		* graphic - Image to be used for the background
		* bg_color - Color to use behind the jumbotron's content.
				Use this if text is hard to read against graphic, or change text_color
		* parallax - When scrolling the page, the jumbtron's content and
				`graphic` will scroll slower. Defaults to `true`
		* height - Height of the jumbotron. Defaults to `300px`.
				Note that this value is CSS and you need to specify units
		* full_width - (default = `true`). Determines if the carousel stretches
				the entire width of the page. If false, it is put within a container.
		* margin_top - Set the padding above the jumbotron.
				You may want this in the case that `full_width` is false
	* Jumbotron button parameters:
		* text - Text displayed on the button
		* url - URL that the button links to
		* class - Attach class attribute information to the button

Usage:
	Parameters can be specified by either the Section or the Content.
	To enable set `components.jumbotron = true` and fill in the jumbotron's parameters.
	Jumbotron's data is defined within a [jumbotron] data object.
	
Example:
```toml
	[jumbotron]
		title = "Hello, Hugo!"
		text = "This is and example of a jumbotron. It is defined within the content's front matter"
		text_color = "#EEE"
		graphic = "http://lorempixel.com/1200/300/city/5"
		bg_color = "rgba(0,0,0,.5)"
		parallax = true
		[[jumbotron.button]]
			text = "A button"
			url = "#"
			class = "btn-primary"
		[[jumbotron.button]]
			text = "Or two"
			url = "#"
			class = "btn-warning"
```

CSS Class Markup:
	* jumbotron
	* jumbotron-content
	* jumbotron-title
	* jumbotron-text
	* jumbotron-buttons

Notes:
	If Content sets `content.jumbotron = false` the jumbotron won't be shown
		even if it is set to true by the section.
	If Content defines the jumbotron, but only the Section enables it,
		**the Content's version is the one that's shown.**
	The jumbotron's content has a lower z-index than the `main` class which
		holds the rest of the page.
		This hides the content during scrolling whenever parallax is enabled.

Todo:
	* layout - Template file to use for markup
	* centered - Ability to center Title, Text, and Buttons
	* Custom Jumbotrons:
		* Google Maps - http://www.bootply.com/eS6TqlELFG
		* Carousel Jumbotron - http://www.bootply.com/ecMCkrQdGv, http://www.bootply.com/W8c08gujh2
	* Insert custom markup
		* You should be able to attach `framework` information to prevent inconsistencies


