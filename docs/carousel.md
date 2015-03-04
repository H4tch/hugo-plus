
A Carousel is a large, full-width, series of navigable slides.

Usage:
	Carousel data is defined within the `carousel` table. Each carousel item is
		then defined within the `carousel.item` array.

Parameters:
	components.carousel - Enable/disables the carousel defined by the Content or Section
	* Carousel parameters:
		* id - HTML `id` for the carousel. Defaults to the Page's Section and
				Title, lowercased, and urlized. Ex: 'blog-first-post'
		* height - Height of the carousel. Defaults to size of current graphic image.
				Note that this value is CSS and you need to specify units
		* full_width - (default = `true`). Determines if the carousel stretches
				the entire width of the page. If false, it is put within a container.
		* margin_top - Set the padding above the carousel.
				You may want this in the case that `full_width` is false
		* bg_color - Color of the Carousel's background. Shown if image is
				non-existent or doesn't fit the entire width
		* graphic - Default graphic if it is not set on the slide
		* text_color - Default text color if not set by slide
		* text_bg_color - Default color of the background of the text if not
				set by the slide
	Carousel Slide parameters:
		* title - Title of the slide
		* text - Supporting text for the slide
		* graphic - Background image to be used. If not set, will attempt to
				fallback onto `carousel.graphic`
		* text_color - Color of the text and title. Overrides `carousel.text_color`
		* text_bg_color - Color of the background of the text. Overrides `carousel.text_bg_color`

Example:
```toml
[component]
	carousel = true

[carousel]
	height = 500
	bg_color = "#000"
	graphic = "http://lorempixel.com/1200/500/city/1/"
	text_color = "#EEE"
	text_bg_color = "rgba(0,0,0.5)"
	[[carousel.slide]]
		title = "Carousel"
		text = "This is the first slide"
	[[carousel.slide]]
		title = "Carousel #2"
		text = "This is the second slide. Enjoy the kitten!"
		text_color = "#000"
		bg_color = "rgba(255,255,255.5)"
		graphic = "http://lorempixel.com/1200/500/cats/1/"
```

CSS Class Markup:
	* carousel
	* carousel-indicators
	* carousel-slide
	* carousel-control
		* left
		* right

Notes:
	If Content sets `component.carousel = false` the carousel won't be shown
		even if it is set to true by the section.
	If Content defines the carousel, but only the Section enables it,
		**the Content's version is the one that's shown.**
	The carousel has a lower z-index than the `main` class which holds the rest
		of the page.
		This hides the content during scrolling whenever parallax is enabled.

Todo:
	* layout - Template file to use for markup
	* centered - Ability to center Title, Text, and Buttons
	* Insert custom markup
		* You should be able to attach `framework` information to prevent inconsistencies


