

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


## Todo
Create a website filled with documentation as the content
Showcase different Bootstrap themes, Highlight Js themes, etc?


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
Pages should largely just consist of the following partial templates
	* `header`
	* `main_begin`
	* `content_header`
	* <custom content code>
	* `content_footer`
	* `main_end`
	* `footer`
This allows you to maintain a consistent structure across all the pages.
To enable/disable some features, you can set parameters in the content piece
	(soon to be done on a per-section basis).

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


