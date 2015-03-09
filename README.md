
# Hugo-plus
A modular featured-packed Hugo theme that's built using Bootstrap components.
The idea is to provide a consistent set of customizable features that remain
	intact across theme and layout changes.
	Layouts affect component placement, while themes affect coloring and minor
		CSS styles.

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

To see differences between and Hugo [read this](/docs/hugo-vs-hugo-plus.md).

### Who?
Targeted at lazy developers that value their time and want a solution to host
	their thoughts, portfolio, and projects while having full control of the
	final product.

This project is chock-full of features to use, learn from, and build off of.
Nothing should be left to magic.


# Features
* Theming
	* Fully responsive layouts and components built with Bootstrap

* Components
	* Jumbotron
	* Carousel
	* Panel widgets
		* Recent Posts
		* About Author (context aware, shows author related to current content)
		* Social links
	* HTML5 Audio control widget for embedding audio files within content
		* Support for title, album info, albumn art, and preloading of the data
	* Syntax highlighting via [Hightlight.js](https://highlightjs.org/)
		* Theme can be customized per Content
	* Disqus comment integration
		* Optional on-demand comment loading
		* Comment count querying
	* [Magnific Popup](http://dimsemenov.com/plugins/magnific-popup/) lightbox
		* Supports photos, videos, iframes, and custom inline HTML code
		* Popup items can also be grouped into a Gallery

* Content Organization
	* Mutliple Author support
		* Custom Author profile pages
		* Author taxonomy for displaying and aggregating posts by an author
	* `Series` taxonomy to group blog posts into a series.
		* Series section also exists which allows you to organize the blog posts
			better and create an overview page for the series.
		* Series can be hierarchical
	* `Stream` section where each content piece is defined as a series of posts
		* Good for random thought streams, incremental progress throughout the
			year, or live reporting of events.
	* Content management, organization, and customization
		* Author, Series, Categories, and Tags Taxonomies
		* Content can be marked as `meta` to hide it from content feeds
		* Ability to render arbitrary custom pages for any content through the `page` parameter

* Other plugins or service integrations
	* OpenGraph metadata integration
		* Supports Author data, Article data, and custom `graphic` for the page
	* Google Analytics integration
	* Google Trends widget

* Customization
	

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

To build the website run `hugo` in the site folder. Make sure `draft=true`
	isn't set so the content shows up, or run `hugo --BuildDrafts`.

Content can be organized by Section, Type, and Taxonomy.
Futher documentation can be found at [docs/README.md](docs/README.md).


# Todo
* Ability to show content from other sections within a sections feed
* Custom CSS and JS injection per-content and per-section
	* These are for small user stylizations that shouldn't be applied site-wide
* Should content title, metadata, and breadcrumbs be displayed in the page_header area?
	* Or at least make this an option
* Component.disabled parameters for non-content components
* Section + content list plugin
	* Display collapsable sections with their content articles 
* Content-configurable
	* Share buttons, ads
* Custom Menu system?
	* Or use the site's main system, where each section is at `.Site.Menus.section_name`?
	* This will most likely clash with my own sub-menu system(need to fix)
* More diverse layouts for Project, Homepage, Streams etc
* Custom content view ".Render" layouts.
* Optional Carousel keyboard arrowing support
* Theme support
	* These are different from Hugo themes in that the web framework, layouts,
		and plugins are separated
	* Plugins and layouts depend on web framework. Default framework is Bootstrap
* Use `safeCss` and `safeHtml` when injecting parameters within markup
* Move social profile usernames into a 'social' data object
	* Make the content injected into to the templates
* Move `style.css` customizations into `style-src/hugo-plus.less`
* Summaries don't render embedded HTML code that was rendered from Markdown
	* But Shortcode HTML is rendered
	* Convert syntax code highlighting to use Shortcodes
		* Add caption/title, line highlighting, etc
* Section label component
* Page_header needs more work
* `est_reading_time` and `word_count`
* Don't show entirety of author's posts at once
	* Use javascript to incrementally `show more` posts. Like 20 at a time.
		* Also have a button to `show all`
* Can I detect this: content `draft=true`, but is being rendered
	* I could then add a bade/label/alert/message "In development" (`msg_draft`)
* Test that this theme works against a blank Hugo project (null data)
* Parameterize no_content_found message
* Example website with documentation
* Doxygen - Bootstrap integration
* Forum support (via Discourse or maybe Lefora)
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
	* Video with image placeholder
* More specific class attribute attachment? ex. Menu item 'Projects': 'menu-item-projects'
	* Allows fine-grained CSS stylizations


#### (c) 2015 Daniel Hatch (h4tch)

[![Gratipay Badge](http://img.shields.io/gratipay/danielh4tch.svg)](http://gratipay.com/danielh4tch "Support me on Gratipay")
[![Flattr Badge](http://button.flattr.com/flattr-badge-large.png)](http://flattr.com/submit/auto?user_id=h4tch&url=github.com/h4tch/hugo-plus "Flattr this")


