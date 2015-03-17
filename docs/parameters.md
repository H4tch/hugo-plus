
# Parameters

#### This documentation is completely incomplete

# Global Site-wide Parameters
Defined within `config.toml`(extension may be different depending on data format
	being used) within the `[params]` object.

See [Hugo's documentation]() for the parameters that are pre-defined by Hugo.


# Site Parameters:
Parameters inherited by Hugo can be found [here](http://gohugo.io/overview/configuration/).
	* title
	* description
	* keywords
	* date_format
	* date_format_short
	* highlightjs
	* theme_plus
	* googleAnalytics
	
**The following are the supported social profiles and should be set to your username:**
	* twitter, instagram, github, bitbucket, stackoverflow, linkedin, facebook,
		vimeo, twitch, hitbox, slack, gratipay, flattr, googleplus, pinterest, youtube


# Section Parameters
Defined within `data/section/<section_name>.toml`
	* title - Set the Section's title
	* framework - (not implemented)
	* layout - (not implemented)
	* css_theme - (not implemented)
	* is_taxonomy - If the section is also a taxonomy. Also section to contain
		content, and display page aggregation. See `taxonomy` data object.
	* group_by_year - (not implemented)
	* continue_message - Customize the message after the summary to invite
			users to the full post. Ex: "Continue Reading" or "Read full story"
	* content_view - 
	* show_meta
	
In addition to the above parameters, Section also supports cofigurable Components.
See [the documentation here](components.md) for more details.


# Content Parameters
See [this page](http://gohugo.io/content/front-matter/) for documentation on Hugo's pre-defined content variables.
Defined within the content's front matter.
A file is a piece of content if it is stored within the `content/` folder.
	* meta - If true, the content will be hidden from lists or section posts.
	* aliases - Array of relative URLs. When these URLs are visited,
			the page will be redirected to the content where the alias was defined.
			For example, the main author of the site may have `author = ["/about"]`
			set in the author content's front matter to redirect site.com/about
			to the author's 'profile' page.
	* type - Causes the content to be rendered by the `type` templates 
	* author - Set the author of the content.
	* series - Make the post apart of a series.
	* flattr_category - If you're using Flattr you can specify the cateogry the
		content belongs to. Valid values are: text, images, video, audio,
		software, people, rest
	* id_reddit - Id of the HN thread and discussion about the Content article
	* id_hackernews - Id of the HN thread and discussion about the Content article
	* thumbnail - (not implemented) Thumbnail to display with the component
	* graphic - (not implemented) Large graphic to display with the component
	
In addition to the above parameters, Section also supports cofigurable Components.
Some Component parameters are Content specific, others are also supported by
	Section, but Content can override those settings.
See [the documentation here](components.md) for more details.


# Author Parameters
Defined within the `content/author/<author-name>.md` file's front matter.
Author files are also content files, and so they support those parameters too.
	* name -  Author's name. Note `title` is still used on the content's page
	* thumbnail - URL of Author's avatar.
	* email - Author's email
	* first_name - Authors first name. (used for OpenGraph metadata)
	* last_name - Author's last name. (used for OpenGraph metadata)
	* gender - Author's gender. (used for OpenGraph metadata)
	* job_title - Author's job title. (used for OpenGraph metadata)
	* website - Link to Author's website
	
**The following are the supported social profiles and should be set to your username:**
	* twitter, instagram, github, bitbucket, stackoverflow, linkedin, facebook,
		vimeo, twitch, hitbox, slack, gratipay, flattr, googleplus, pinterest, youtube
	* twitter_timeline - Widget Id for your Twitter timeline widget which can be [made here](https://twitter.com/settings/widgets/new).
		This value is found within the widget code's `data-widget-id` property
		or can be extracted from the URL on the widget's configuration page.


