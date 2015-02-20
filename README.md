
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

## Organizing Content Using Taxonomies
### Creating Your Own Taxonomy
## Organizing Content Using Sections
### When to Override `Types`?
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

### Customizing and Compiling From Source
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
#### In-progress
* Support OpenGraph and other metadata APIs
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

