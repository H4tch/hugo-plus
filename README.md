
# Hugo-plus
A modular featured-packed Hugo theme that's built using Bootstrap components.
The idea is to provide a large foundation of componets that can targetted to
	provide a consistent set of features across Hugo themes.

Each theme should provide a different layout while allowing the Bootstap theme
	to be interchangeable.

In theory this foundation will allow you to have your own Bootstrap theme that
	can then be applied to different layouts, each supporting a similar set of
	features.

### Why?
Hugo has potential, but it's a pain to use due to its poor documentation and
	inconsistency between themes.

This project is meant to provide a set of guidelines, conventions, structure,
	and completely functional base on which to build.

### Who?
Targeted at lazy developers that value their time and want a solution to host
	their thoughts, portfolio, and projects while having full control of the
	final product.

This project is chock-full of features to use, learn from, and build off of.
Nothing should be left to magic.



# Features
* Fully responsive layouts and components built with Bootstrap
* Mutliple Author support
	* Useful for things like guest posts
	* May not be suitable for a larger content publishing site due to Hugo's limitations
* `Series` taxonomy to group blog posts into a series.
	* Series section also exists which allows you to organize the blog posts
		better and create an overview page for the series.
	* Series can be hierarchical
* `Stream` section where each content piece is defined as a series of stream posts
* Disqus comment integration
	* Optional on-demand comment loading
		* Auto loads if user jumps to comment section through "#comments" anchor
	* Comment count querying
		* Custom script to inject "No comments" when Disqus fails to
* Lightbox popup support using [Magnific Popup](http://dimsemenov.com/plugins/magnific-popup/)
	* Supports photos, videos, iframes, and custom inline HTML code
	* Popup items can also be grouped into a Gallery
* HTML5 Audio control widget for embedding audio files within content
	* Support for title, album info, albumn art, and preloading of the data
* OpenGraph metadata (contained within `partials/meta.html`)
	* Supports Author data, Article data, `graphic` parameter
* Syntax highlighting via `Hightlight.js`
	*  Customizable theme per content, falls back on `.Site.Params.highlightjs`
* Categories label buttons and Tag menu per post
* Categories panel for the sidebar
* Recent Posts panel
* About Author panel
* Custom Social sharing buttons
* Custom Social follow buttons Author, Site, Projects, etc
* Google Analytics integration
* Google Trends widget
* Auto updating copyright year insertion
	* example: `(c) 2015` will become `(c)2015-2016` once 2016 rolls around
* Content management, organization, and customization
	* Customizable theme components on a per Section basis
	* Author, Series, Categories, and Tags Taxonomies
	* Support for `meta` pages to hide from content feeds. (example: archive page)
	* Ability to render arbitrary custom pages for any content through the `page` parameter



# Getting Started
First, [download and install Hugo.](http://gohugo.io/)
To initialize your website, type `hugo new site <site_name>`.

Hugo-plus is meant to be installed within your site's `themes/` folder.
You can [dowload hugo-plus directly](https://github.com/H4tch/hugo-plus/archive/master.zip),
	or clone it by typing:
> git clone https://github.com/H4tch/hugo-plus/

Creating new content is done using Hugo's `new` command from the site folder.
> hugo new blog/first-post.md

This creates new content of type `post` within the `blog` *section* found
	in `content/blog`.
This content will be written and formatted using Markdown as denoted by the
	`md` extension.

Content can be organized by Section, Type, and Taxonomy.
Futher documentation can be found at [docs/README.md](docs/README.md).


# Todo
* Test that this theme against a blank Hugo project
* More diverse layouts for Project, Homepage, Streams etc
* Breadcrumbs
	* Use Hugo's menu system or use .Site.Data
* Project Documentation hosting (via Doxygen)
* Forum support (via Discourse)
* Don't store custom Section templates in 'partials'?
	* I think ".Render" functionality could be used for section specific "partials"
* Rss links for Sections and "Taxonomy Sections"
* Need to group content by year in more places, or add year to the date of each item
* URL shortener integration for sharing
	* Hook into a Go function to interface with an api?
* Table of contents partial template
* 'Hide comments' button(When unhiding, the comments shouldn't have to reload)
* Github/Bitbucket widgets
	* Follow, Share, Star, Fork, Feeds
* Shortcodes
	* Link to a Source File with syntax highlighting(use relref and iframe?)
	* Gist
	* Carousal
	* Plot/Graph data


#### (c) 2015 Daniel Hatch (h4tch)


