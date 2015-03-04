
#### This documentation is completely incomplete

# Global Site-wide Parameters
Defined within `config.toml`(extension may be different depending on data format
	being used) within the `[params]` object.

See [Hugo's documentation]() for the parameters that are pre-defined by Hugo.

### Parameters Pre-Defined by Hugo-plus:
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
	* group_by_year - (not implemented)
	* continue_message - Customize the message after the summary to invite
			users to the full post. Ex: "Continue Reading" or "Read full story"
	
The `contents` contains all of the components which can be enabled/disabled
	related to the content/summary section of the page.
	They are all disabled by default.
Note, the Content's front matter supports a subset of the parameters for componets.
This allows Content to override some of Section's components settings.
	* componentdate - Enable/disable the date within the content's meta section
	* componentauthor - Enable/disable the author's name within the content's meta section
	* componentseries - Enable/disable the series' name within the content's meta section
	* componentshare_buttons - Enable/disable the share buttons for the article
	* componentfollow_buttons - Enable/disable the follow buttons for the author or project
	* component.categories - Enable/disable the categories that the content belongs to
	* component.tags - Enable/disable the tags that the content belongs to
	* component.pager - Enable/disable the buttons for the next and previous content
	* component.comments - Enable/disable the comments section for the component
			Can also be defined in the content's front matter for more fine-grained control.
	* component.breadcrumbs - Enable/disable breadcrumbs showing the path to the current page
	* component.navbar - todo
	* component.carousel - Shows a carousel defined within the content or section.
			See [Carousel's Parameters](carousel.md).
			Setting can be overridden by content
	* component.jumbotron - Shows a jumbotron defined within the content or section.
			See [Jumbotron's Parameters](jumbotron.md).
			Setting can be overridden by content
	* component.page_header - Enable/disable the title of the page above the
			component This is not shown on content pages.
	* component.sidebar - todo
	* component.footer - todo
	
Comments parameters:
	* comments.on_demand - Don't autoload the comments when the page is loaded


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
	* author - Set the author of the component Author is a taxonomy so the value must be an array of strings.
	* series - Make the post apart of a series. Series is a taxonomy so the value must be an array of strings.
	* thumbnail - (not implemented) Thumbnail to display with the component
	* graphic - (not implemented) Large graphic to display with the component
	* flattr_category - If you're using Flattr you can specify the cateogry the
		content belongs to. Valid values are: text, images, video, audio,
		software, people, rest
	* continue_message - Customize the message after the summary to invite
			users to the full post. Ex: "Continue Reading" or "Read full story"
	* componentcomments - Enable/Disable the comments section for this post
	* component.carousel - Shows a carousel defined within the content or section.
			See [Carousel's Parameters](carousel.md)
	* component.jumbotron - Shows a jumbotron defined within the content or section.
			See [Jumbotron's Parameters](jumbotron.md)

# Author Parameters
Defined within the `content/author/<author-name>.md` file's front matter.
Author files are also content files, and so they support those parameters too.
	* name -  Author's name. Note `title` is still used on the content's page
	* avatar - Link to Author's avatar.
	* email - Author's email
	* first_name - Authors first name. (used for OpenGraph metadata)
	* last_name - Author's last name. (used for OpenGraph metadata)
	* gender - Author's gender. (used for OpenGraph metadata)
	* job_title - Author's job title. (used for OpenGraph metadata)
	* website - Link to Author's website
	* componentauthor_thumbnail - Shows thumbnail in the content area
**The following are the supported social profiles and should be set to your username:**
	* twitter, instagram, github, bitbucket, stackoverflow, linkedin, facebook,
		vimeo, twitch, hitbox, slack, gratipay, flattr, googleplus, pinterest, youtube
	* twitter_timeline - Widget Id for your Twitter timeline widget which can be [made here](https://twitter.com/settings/widgets/new).
		This value is found within the widget code's `data-widget-id` property
		or can be extracted from the URL on the widget's configuration page.



# Shortcodes
Shortcodes are self-contained and cannot access parameters of the site or page.
For documentation for each shortcode, you'll have to view the shortcode's source
	In the future, it'd be nice to move documentation and default configuration
		of shortcodes into the `data/shortcode/<plugin>/<shortcode>.toml` or something


