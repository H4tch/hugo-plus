
# Hugo-plus
A modular featured-packed Hugo theme that's built using Bootstrap components.
The idea is to provide a consistent set of customizable features that remain
intact across theme and layout changes.

Layouts affect component placement, while themes affect coloring and minor
CSS styles.

Using this foundation will allow you to build your own themes by piecing
together pre-frabricated components instead of writing everything from scratch.

### Why?
Hugo has potential, but it's a pain to use due to its poor documentation and
inconsistency between themes.

This project is meant to provide a set of guidelines, conventions, structure,
and completely functional base on which to build.

To see differences between and Hugo [read this](/docs/hugo-vs-hugo-plus.md).

### Who?
Targeted at lazy developers that value their time and want a solution to host
their thoughts, portfolio, and projects while having full control of the final
product.

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
	* Custom pages found within `content/page/`
		* Each page supports the same customizations of a Section
		* Can utilize custom layout by using the `page` parameter

* Other plugins or service integrations
	* OpenGraph metadata integration
		* Supports Author data, Article data, and custom `graphic` for the page
	* Google Analytics integration
	* Google Trends widget
	* Spoiler widget to reveal/hide contents within Content articles


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

To build the website run `hugo` in the site folder. Make sure `draft=true` isn't
set so the content shows up, or run `hugo --BuildDrafts`.

Content can be organized by Section, Type, and Taxonomy.
Futher documentation can be found at [docs/README.md](docs/README.md).


# Todo
* Improved customiation
	* Theming
		* Specify layout files for section, content views, and components
		* CSS and JS injection per Content, Section, and site-wide
	* Navbar
	* Sidebar
		* About Author
		* Social links
		* Recent Pages
	* Footer Menu System
	* Page_header and content_header configuration/interoperability
	* component_name.disabled parameter for non-content components
		* Jumbotron, Carousel, Breadcrumbs, Page_header, (Comments?)
		* Customized fallback methods
	* Section[content_list] plugin
		* Acts as an outline of the entire site
	* Share buttons
	* Section label component
	* In-development label Component
	* Table of contents
	* Ads, BannerAds
	* Section configurations
		* Cross-Section content aggregation
		* is_taxonomy
		* taxonomy.
		* [aggregation]
			* group_by_year
			* show_meta
			* sections = [""]
				* Use `apply` to test a page against an array of section names
		* msg_no_content_found

* Move social profile usernames into a 'social' data object
	* Make the content injected into to the templates
* Menu system for Sections where it will fallback to `.Site.Menus`
* HTML5 Video Shortcode with image placeholder
* More diverse layouts for Project, Homepage, Streams etc
* Example website with documentation
* Move `style.css` customizations into `style-src/hugo-plus.less`
* Javascript pagination for content page lists
* 'Hide comments' button, configurable
* Syntax code highlighting using Shortcodes
	* Add caption/title, line highlighting, etc
	* Point to external source file
* `est_reading_time` and `word_count`
* Doxygen - Bootstrap integration
* Forum support (via Discourse or maybe Lefora)
* URL shortener integration for when sharing/tweeting the page (use JS websockets?)
* Github/Bitbucket widgets
	* Follow, Share, Star, Fork, Feeds
* More specific class attribute attachment throughout the website
	* ex. Menu item 'Projects': 'menu-item-projects'
	* Allows fine-grained CSS stylizations
* Schema.org integration
* Support template fields within string variables for templated components
	* {{ $title := or (and (eq (first 2 $item) "$." ) (index . (replace $item "$." ""))) $item }}
	* Possible to use `delimit` for access sub-sub-fields?
	* Probably need to use `apply` to handle the iteration

#### (c) 2015 Daniel Hatch (h4tch)

[![Gratipay Badge](http://img.shields.io/gratipay/danielh4tch.svg)](http://gratipay.com/danielh4tch "Support me on Gratipay")
[![Flattr Badge](http://button.flattr.com/flattr-badge-large.png)](http://flattr.com/submit/auto?user_id=h4tch&url=github.com/h4tch/hugo-plus "Flattr this")


