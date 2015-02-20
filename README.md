
# Hugo-plus
A featured-packed Hugo theme that's built using Bootstrap components.
The idea is to provide a large foundation of modules that can be used to piece
	together a website/blog, while allowing the theme to be interchangeable.

### Why?
Hugo has potential, but it's a pain to use due to its poor documentation.
This project is meant to provide a powerful in spite of these limitations.

### Who?
Targeted at lazy developers that don't want to reverse engineer Hugo's data
	structures and punch a hole in their screen.
You'll be given a foundation chock-full of features to use, learn from, and
	extend. Nothing will be left to magic.

-----

# Features
* Fully Bootstrapped responsive default layouts
* Disqus comment integration
	* Optional on-demand comment loading
		* Auto loads if user jumps to comment section through "#comments" anchor
	* Comment count querying
		* Custom script to inject "No comments" when Disqus fails to
* Breadcrumb support for Taxonomies
* Social sharing buttons
* Auto updating copyright year insertion
	* exmple: "(c) 2015." will become "(c)2015-2016." when 2016 rolls around
* Categories label buttons and Tag menu per post
* Categories panel
* Recent Posts panel
* Mutliple Author support
	* Good for doing guest posts
	* If Hugo, had incremental builds, then this feature could really be
		abused to make a larger content publishing site


# Getting Started

### Writing content
### Classifying and structuring content types
### Customizing page layouts
### Customizing the Bootstrap theme
	Install the Less compiler though NPM
	Modify "variables.less" and compile "hugo-plus.less"

-----
# Todo
#### In-progress
* Series intro page, summary, graphic, etc.
* Summary area should be used for Streams, Series, Projects, etc.
* Nav-menu should use Hugo's Menu system
* More template layouts for things like Projects or Portfolios
	* Homepage groups and showcases content using overloaded Summary templates
#### Future
* Customized Summary pages for different Sections
* Reflect current page/section within the navigation bar
* Documentation, usage examples, and tutorials
	* Document custom parameters
* Group content by year within 'list' pages
* Can idividual Taxonomy Term pages be customized?
	* Sections could be used to better address this? yes
* 'Hide comments' button(When unhiding, the comments shouldn't have to reload)
* URL shortener integration for sharing
	* Best implementation would be to hook into a Go function?
* Email button
* Support OpenGraph and other metadata APIs
* Host documentation for projects. (via Doxygen)
* Custom message per content to "Read more", or "Continue reading"
* Shortcodes - Plugins for adding to content (NOTE, currently working...)
	* Carousal
	* Thumbnail (caption, link, full res version) + thumbnail browser
	* Gallery, maybe tied in with photo view
	* Youtube, with subscribe and other widgets
	* Gist
	* Link to a Source File with syntax highlighting
	* Amazon Affiliate Links
	* Plot/Graph data
	* Google-trends


#### (c) 2015 By Daniel Hatch (h4tch)

