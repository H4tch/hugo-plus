
Why Section
	A series becomes a piece of content, instead of just a label
	It will aggregate all relevant pages with the series taxonomy

Section overrides taxonomy rendering

content/
	series/
		post
		series-name
			type = 'meta'?

section/
	series


Section and Taxonomy will conflict. Which page will be chosen?
	Section:	site/series
	Taxonomy:	site/series # This should be rerouted?

## Series Section?
	Each piece on content here will be used to showcase the series with custom
	description, graphics, etc.

## Series Taxonomy
	Used to associate a blog post to a Series

## Custom Layouts
	layouts/series/
		single.html
		summary.html
