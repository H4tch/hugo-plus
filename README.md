
# Hugo-plus
A fully featured and customizable Hugo theme that's built using Bootstrap
components.

Hugo-plus provides a base set of customizable features that are able to remain
consistent across theme and layout changes.
	
![Screenshot](/images/screenshot.png)
![Screenshot of a Dark Theme](/images/screenshot2.png)

### Why?
Hugo lacks a standardized set of features that a Theme should support.
Many of its Themes have hard-coded content which leads inconsistent user
experiences.

This project introduces a basic structure which allows Themes, Layouts,
Components, and Plugins to be reused and customized.

Customization can be done in stages - whether you just want to change the color
palette and fonts, create different Layout Views for the content, or develop
additional Components.


### Who?
Targeted towards lazy developers who want a quick solution to host their
thoughts, projects, and other content while having a basis for further
customization and expansion of the finished product.


# Features
### Components
* Jumbotron
* Carousel
* Panel widgets
	* Recent Posts
	* About Author (context aware, shows author related to current content)
	* Social links
* 'Series' Table of Content
* HTML5 Audio control widget for embedding audio files within content
	* Support for title, album info, albumn art, and preloading of the data
* Syntax highlighting via [Hightlight.js](https://highlightjs.org/)
	* Theme can be customized per Content
* [Disqus](https://disqus.com/https://disqus.com/) comment integration
	* Optional on-demand comment loading
	* Comment count querying
* [Magnific Popup](http://dimsemenov.com/plugins/magnific-popup/) lightbox
	* Supports photos, videos, iframes, and custom inline HTML code
	* Popup items can also be grouped into a Gallery
* [Google Custom Search Box](https://cse.google.com/cse/all)


### Content Organization
* Mutliple Author support
	* Custom Author profile pages
	* Author taxonomy for displaying and aggregating posts by an author
* `Series` taxonomy to group blog posts into a series.
	* Series section also exists which allows you to organize the blog posts
		better and create an overview page for the series
	* Series can be hierarchical
* `Stream` section and shortcode for a Twitter styled lists of posts
	* Good for random thought streams, incremental progress throughout the year,
		or a project changelog
* Content management, organization, and customization
	* Author, Series, Categories, and Tags Taxonomies
	* Content can hidden using the `meta` field in the Content's front matter


### Theming
* Fully responsive layouts and components built with Bootstrap
* Customizable Component composition of page Layout


### Other plugins or service integrations
* OpenGraph metadata integration
	* Supports Author data, Article data, and custom `graphic` for the page
* Google Analytics Plugin
* Google Trends Shortcode Widget
* 'Spoiler' Shortcode hide/show content


# Getting Started
If you already have a Hugo website, or you want to continue testing traditional
Hugo themes, you can use Hugo-plus as any other Hugo theme.

However, since Hugo-plus introduces its own Addon system, it can be installed
in the top level directories of the site which makes management eaiser.

First, [dowload hugo-plus directly](https://github.com/H4tch/hugo-plus/archive/master.zip),
or clone it by typing:
> git clone https://github.com/H4tch/hugo-plus/

If you don't have Hugo installed, [download it here.](https://github.com/spf13/hugo/releases)
and install it within your environment `$PATH` or in your site's folder.

Content is created using Hugo's `new` command from the top level directory.
> hugo new blog/first-post.md

This creates a new content post within the `blog` section of your site.
This content will be written and formatted using Markdown as denoted by the
`md` extension. Content is organized by Section and/or Taxonomy.

By default all content has `draft = true` set to prevent incomplete posts from
showing up in your feed. Set this to false when the post is finished.

To build the website run `hugo --buildDrafts` in the site folder.
To build and run a locally hosted server of your website, run `hugo server -w`.
You can connect to it in your browser by navigating to `localhost:PORTNUMBER`.

### Further Reading
Dive deeper into the features and customizations of Hugo-plus [here](docs/overview.md).
An Introduction to Hugo can be [found here](http://gohugo.io/overview/introduction/).


#### (c) 2015 Daniel Hatch (h4tch)
[![MIT LICENSE Badge](https://img.shields.io/github/license/mashape/apistatus.svg)](/LICENSE.md "MIT Licensed")
[![Gratipay Badge](http://img.shields.io/gratipay/danielh4tch.svg)](http://gratipay.com/danielh4tch "Support me on Gratipay")
[![Flattr Badge](http://button.flattr.com/flattr-badge-large.png)](http://flattr.com/submit/auto?user_id=h4tch&url=github.com/h4tch/hugo-plus "Flattr this")


