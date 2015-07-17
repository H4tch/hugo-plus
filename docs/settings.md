# Parameters

#### This documentation is completely incomplete

# Section Parameters:
* title 			- Section's Title (Used to site the title of your site)
* name  			- Section's informal name (The site's index page is set to 'Home')
* author			- Section's default/fallback Author
* taxonomy 			- The Taxonomy Name if the Section acts as a Taxonomy
* logo  			- Logo for the Site/Section
* favicon 			- Small image to display on Browser Tabs
* description 		- Description of the Section
* keywords 			- Keywords relevant to the Section (comma separated list)
* layout 			- Addon that defines the Layout Configuration 
* theme 			- Addon that defines the Theme Configuration
* theme_dark		- (not_implemented)
* icon_theme 		- Addon that defines the Icon Theme Configuration
* icon_theme_dark 	- Addon that defines the Dark Icon Theme Configuration
* background		- Page's background image
* background_dark	- Page's background image for Dark Themes
* date.format
* date.short_format

* menus	- Array of the enabled Menus. Each element corresponds to a menu entry
* [[menu.NAME]] - A Menu entry for the 'NAME' Menu. Ex: `[[menu.navbar]]`
	* name - Name of the entry
			If the `name` matches another Menu, this entry will contain a sub-menu
			If name is set to `$divider`, it will insert a divider
	* menu - Name of the sub-menu
		Navbar only supports a single sub-menu layer.
		Read the notes within the [Navbar Component template](/layouts/partials/default/navbar.html)
		to see how you can support a sub-menu within a sub-menu within Bootstrap.
	* url - Url of the entry
			Todo: support for `$header` and `$disabled`

* [content-list], [taxonomy-list], [term-list], [aggregation-list]
	* view - Layout template to use to render Content (ex: li, summary, content)
	* group_by_year - Should Posts be grouped by year
	* posts - Number of posts to display
	* paginiation - (Not Implemented) Enables javascript-based pagination
			uses 'posts' to determine number to display at time
	* summary_continue_reading - Customize the message after the summary to invite
			users to the full post. Ex: "Continue Reading" or "Read full story"
	* show_meta - Should Content posts with `meta = true` be shown
			This is true for the `Author` section because author content pages
			are set to `meta`
	* no_content_found - Should the `no_content_found` be displayed if the list
			fails to render any pages

* [msg] - Table holds strings used to customize Components
	This allows Components to be easily ported to other languages


In addition to the above parameters, Section also holds Component configurations.


# Profile Parameters
These are parameters that are used to define Social Usernames/ProfileIds, Widget
Ids, and maybe even Api Keys.

The config file can be [found here](/data/profiles.toml).

All profile fields are defined within a data table named after the Section, or
'site' be default. Example: `site.twitter = "h4tchd"`.

There are many 'social' fields for specifying your Username/ProfileId including:
* twitter, instagram, github, bitbucket, stackoverflow, linkedin, facebook,
	vimeo, twitch, hitbox, slack, gratipay, flattr, googleplus, pinterest, youtube

Plugins can utilize the Profiles config file as well:
* disqus
* google_analytics
* google_search
* google_search_dark
* twitter_timeline
* twitter_timeline_dark


# Content Front Matter Parameters
See [this page](http://gohugo.io/content/front-matter/) for documentation on
Hugo's pre-defined content variables.

* meta - If true, the content will be hidden from lists or section posts.
* aliases - Array of relative URLs. When these URLs are visited,
		the page will be redirected to the content where the alias was defined.
		For example, the main author of the site may have `author = ["/about"]`
		set in the author content's front matter to redirect site.com/about
		to the author's 'profile' page.
* type - Causes the content to be rendered by the `type` templates 
* author - Set the author of the content.
* thumbnail - Thumbnail to display with the Content
* graphic - (Not Implemented) Large graphic to display with the component
* series - Make the post apart of a series
* background - Page's background.
* background_dark - Page's background for Dark themes.

* flattr_category - If you're using Flattr you can specify the cateogry the
	content belongs to. Valid values are: text, images, video, audio,
	software, people, rest
* id_reddit - Id of the HN thread and discussion about the Content article
* id_hackernews - Id of the HN thread and discussion about the Content article

In addition to the above parameters, Section also supports cofigurable Components.
Some Component configurations are Content specific, others are also supported by
	Sections, but Content can usually override those settings.


# Author Content Front Matter Parameters
Defined within the `content/author/<author-name>.md` file's front matter.
Author files are also content files, and so they support those parameters too.
	* name -  Author's name
	* term - Taxonomy term used to aggregate Author's posts
	* thumbnail - URL of Author's avatar
	* email - Author's email
	* first_name - Authors first name. (used for OpenGraph metadata)
	* last_name - Author's last name. (used for OpenGraph metadata)
	* gender - Author's gender. (used for OpenGraph metadata)
	* job_title - Author's job title. (used for OpenGraph metadata)
	* website - Link to Author's website
	
**The following are the supported social profiles:**
	* twitter, instagram, github, bitbucket, stackoverflow, linkedin, facebook,
		vimeo, twitch, hitbox, slack, gratipay, flattr, googleplus, pinterest, youtube
	* twitter_timeline - Widget Id for your Twitter timeline widget which can be [made here](https://twitter.com/settings/widgets/new).
		This value is found within the widget code's `data-widget-id` property
		or can be extracted from the URL on the widget's configuration page.


# Theme/Layout/Icon/Plugin Parameters
* [meta]			- Defines dependencies
	* css			- Array of Urls of to CSS files
	* js			- Array of Urls to JS files
	* head_inline	- Array of Templates instantiated with pages's `meta` element
	* body_inline		- Array of Templates instanted at the end of the pages `body` element

## Theme Parameters
* is_dark			- If the Theme should prefer dark styling (background, icons, etc)
* icons				- Name of the Addon to use for the Icon Theme
* icons_dark		- Name of the Addon to use for the Dark Icon Theme
* background		- Page's background
* background_dark	- Page's background for Dark themes.
* navbar.class		- (Not Implemented)
* navbar.inverse	- Should the 'inverse' theme of the Navbar be used
* footer.class		- Specify the class of the `footer` component


## Layout Parameters
template = "default/main.html"
* [views] - 
	* content - Renders a full Content post
	* summary - Renders the Summary of a Content post
	* list - Currently Renders all List Types
	* li - Renders a single List element
	* term_list - Render's a Taxonomy's List of Terms
	* error_404 - Shown on `404.html` Page
* [templates] - Each field specifies the implementation folder for the component
	* Ex: `pager = "default/content"`
* header.components - Components to be included in the `header` layout section
* section.components - Components to be included in the `section` layout section
* aside.components - Components to be included in the `aside` layout section
* footer.components - Components to be included in the `footer` layout section
* content.before - Components to be included before the `content` view
* content.after - Components to be included after the `content` view
* content.page_fold - Components to be included in the content's `page_fold` section
* summary.before - Components to be included before the `summary` view
* summary.after - Components to be included after the `summary` view
* summary.page_fold - Components to be included in the summary's `page_fold` section
* list.before - Components to be included before all `list` type views
* list.after - Components to be included after all `list` type views
* content_list - Specialization of `list`. Instantiated for Section's Content feed
* term_list - Specialization of `list`. Instantiated for Taxonomy's Term list
* term_content_list - Specialization of `list`. Instantiated for Taxonomy's Term pages list
* aggregation_list - Specialization of `list`. Instantiated for Contents's Taxonomy Aggregation feed


## Icon and Dark Icon Theme Parameters
# Note, Styling isn't implemented yet.
* default.class - The default fallback settings when an icon isn't found
* default.COMPONENT_NAME.class - The default fallback for a specific Component

** All other support data tables are dependent on the Components that utilize
this file, including: social_links, follow_links, share_links **
The default Icon Theme file can be [found here](/data/addons/default/icons.toml)


