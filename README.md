
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
* Syntax highlighting for code with customizable theme per content
* Categories label buttons and Tag menu per post
* Categories panel for the sidebar
* Recent Posts panel
* About Author panel
	* If Author is not specified for content, it defaults to the main author
* Custom Social sharing buttons
* Custom Social follow buttons for Author, Site, or Projects
* Google Analytics integration
* Google Trends widget
* Auto updating copyright year insertion
	* exmple: `(c) 2015` will become `(c)2015-2016` once 2016 rolls around
* Content management, organization, and customization
	* Author, Series, Categories, and Tags Taxonomies
	* Support for `meta` pages to hide from content feeds. (example: archive page)
	* Ability to render arbitrary custom pages for any content through the `page` parameter



# Getting Started
First, [download and install Hugo.](http://gohugo.io/)

Next, [dowload hugo-plus directly](https://github.com/H4tch/hugo-plus/archive/master.zip),
	or clone it by typing:
> git clone https://github.com/H4tch/hugo-plus/

This project is meant to be a starting base from which you can build off of,
	customize, and fill in with content.


### Writing Content
Creating new content is done using Hugo's `new` command from the site folder.
> hugo new blog/first-post.md

This creates new content of type `post` within the `blog` *section* found
	in `content/blog`.
This content will be written and formatted using MarkDown as denoted by the
	`md` extension.

Content can be organized by Section, Type, and Taxonomy.
In the next sections we'll see the abilities and trade-offs involved with each.

## Organizing Content Using Sections
Sections allow you to group content by 'type', and determines how they are displayed.
For example, all blog posts follow the same format, so they are stored within the same section.

For file organization purposes you can create a section that is rendered and grouped
	together within another section. For this to work, each piece of content needs
	to specify its `type` as that of the other section.
```
content/
	blog/
		first-post.md
	travel-blog/
		trip-to-mars.md
```
```
	trip-to-mars.md:
	+++
	type = "blog"
	+++

	...
```

## Organizing Content Using Taxonomies
A `Taxonomy` is a "type of label" used to provide classification for content across `sections`.
Examples of Taxonomies are `Category`, `Tag`, `Author`, and `Series`.
(`Date` could even be considered as a Taxonomy.) Each Taxonomy groups the content by `terms`.

Categories should generally be limited to a small set of general terms like:
	`News`, `Random`, `Technology`. A piece of content should rarely belong to more than two Categories.

Tags are a much more fine-grained mechanism to add metadata to content.
These generally don't provide much benefit, but if you do use them, try to be
	consistent to prevent tags from only linking to a singular content piece.

The `Author` Taxonomy allows you to find or subscribe to content written by a specific author.
Due to Hugo's implementation, the `author` parameter within a content's front matter
	must be an array of terms, even though only one author is needed(hugo-plus only support one).

To customize the Author, Project, or Series Taxonomy pages, [read this section](#custom-taxonomy-and-term-pages).


### Creating Your Own Taxonomy
If you need to create your own Taxonomy to classify content across sections
	that `hugo-plus` let us know.
## Custom Content Pages
## Custom Taxonomy and Term Pages
## Overview of Templates
### How is the Site Built?
### What Pre-Made Templates Exist?
## Customizing the Bootstrap Theme's Look and Feel
Bootstrap is used as the foundation due to its ubiquity and popularity in this
industry. Applying a Bootstrap theme is done by replacing
`static/css/hugo-plus.min.css` with the one you want.

There are many themes available for free, but you may want to create
your own or customize an existing one.

If you google `bootstrap theme editor` you can find an editor that allows you
create your own theme. Some also allow you to download the `variables.less`
file which is used to compile into the final css file. This can be useful if
you want to modify the theme in the future.

### Compiling and Customizing From Source
Bootstrap is written using Less, which is then compiled into CSS.
Before we continue, you'll need to setup the toolchain.

First you'll need to [install nodejs](http://nodejs.org/download/).

Once, nodejs is setup, The Less compiler can now be installed though `npm`. (This may require admin privileges.)
> npm install -g less

The source files for Bootstrap and the hugo-plus theme is stored within the 
`style-src/` directory.
Most changes to the theme can done within `bootstrap/variables.less`.

To compile the less into css and apply it to the website, run:
> lessc --compress hugo-plus.less > ../static/css/hugo-plus.min.css

If you are on Linux, the `listen.sh` script will recompile the theme
whenever the `bootstrap` folder is updated.



# Todo
#### Documentation
* How is this different from Hugo?
	* Built-in support for multiple Authors, Project page, Series, etc
	* Don't use Hugo's plural/singular system for taxonomies
	* Don't use .Params.description
		* The Summary of content is sufficient
	* `meta` parameter to hide content
* Sections
* Taxonomies
* Parameters
	* Site Parameters
	* Content Parameters
	* Custom Parameters
		* Visually separate them from the default ones. Let me know about them!
* Page
* Blog
* Authors
* Series
* Streams
* Layout Structure
#### Future
* More diverse layouts for Project, Homepage, Streams etc.
* Custom parameters for Sections using .Site.Data.<section name>
* Reflect current page/section within the navigation bar
	* Hugo 0.13 has IsCurrent and HasCurrent data fields
* Rss links for Sections and "Taxonomy Sections"
* I think ".Render" functionality could be used for section specific "partials"
	* May have to enter a certain "scope" though?
* Don't use partial system for customized Sections?
	* Use `{{ template "file.html" }}`
* Table of contents partial template
* Need to group content by year in more places, or add year to the date of each item
* 'Hide comments' button(When unhiding, the comments shouldn't have to reload)
* URL shortener integration for sharing
	* Hook into a Go function to interface with an api?
* Project Documentation hosting (via Doxygen)
* Forum support (via Discourse)
* Breadcrumbs
	* Use Hugo's menu system or use .Site.Data
* Shortcodes
	* Link to a Source File with syntax highlighting
	* Gist
	* Carousal
	* Plot/Graph data


#### (c) 2015 Daniel Hatch (h4tch)

