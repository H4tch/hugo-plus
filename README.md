# Hugo-plus
--------------
A featured-pack Hugo theme that's built using Bootstrap components.
The idea is to provide a large foundation of modules that can be used to piece
	together a website/blog, while allowing the theme to be interchangeable .

# Why?
Hugo has a lot of potential, but is a pain to use do to template limitiations,
	documentation. This "theme" is meant to realize these potentials.

# Who?
Targeted at lazy developers that don't want to reverse engineer Hugo's data
	structures and constantly work around it's poor documentation.
You'll still gain the benefits of (nearly) complete customization.
However, Hugo makes it difficult to 

-----

# Features
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
	* Good if you ever want to do guest posts
	* If Hugo, had incremental builds, then this feature could really be
		abused to make larger content publishing sites, but alas...


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
* Decouple, modularize components.
* Allow 'pager' to be parameterized by any Taxonomy, or section
	* example: get the next/prev in the "Series" taxonomy
#### Future
* Documentation, usage examples, and tutorials
	* Document custom parameters
* More template layouts for things like Projects, "Streams", or Portfolios 
* Can idividual Taxonomy Term pages be customized?
	* Sections could be used to better address this? yes
* Detect current page to be reflected within the navigation bar
* Nav-menu should use Hugo's Menu system(right now its somewhat hardcoded, yet still customizable!)
* Invert the social_links and share_links (reduce manditory user modification)
	* Make them a shortcode, where you pass in the necessary info
* 'Hide comments' button
	* When unhiding, the comments shouldn't have to reload
* Series subtitle
	* Clever way to provide metadata for taxonomy terms??
	* One hack would be to use the urlized term to index into .Site.Params
		* This assumes dashes are allowed, plus it's fairly ugly...
* URL shortener integration for sharing
	* Best implementation would be to hook into a Go function?
* Email button
* Support OpenGraph and other metadata APIs
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

