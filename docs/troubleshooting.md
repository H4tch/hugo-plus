
# Troubleshooting
In this document you will find possible solutions to a problem you may be
encountering. If your problem isn't listed, or none of the solutions work,
please [submit an issue](https://github.com/H4tch/hugo-plus/issues) and I'll do
what I can to help you and improve this document.


### Content Fails to Show up within Section Content Feed
#### Possible Causes:
* Content has `draft = true` set
	* Try building with `hugo --buildDrafts`.
* Section's `content_sources` may be incorrect.
	* The array should at the very least contain its own Section.
	* By default, only the current Section's content will be displayed.
	* The Default 'site' config can not set this field.
* Content has `meta = true` set
	* Allow the Section to show meta by setting `content_list.show_meta`.
* Layout has invalid `content_list.view` set
	* This outputs error messages if view isn't found.
* Content parameters may be invalid
	* An invalid Date value has caused me problems in the pase.


### A Component isn't being displayed in a Section (or anywhere)
#### Possible Causes:
* The Component's template contains errors
	* Hugo may report the template as 'incomplete' or will crash while building.
	* The problem will likely be near recent modifications to the template.
* The Component has been added to the `disabled` array for the Section
	* If the array isn't set, check Default 'site' Config.
* The Component hasn't been added to a Layout container in the Layout Config
	* Add the component to the layout container in which it should appear
	* Ex: `aside.components = ["about_author"]`
* Layout Config file doesn't specify the Component's template implementation
	* Set `templates.COMPONENT` to the folder where the Component's template
	file is stored. Ex. `templates.pager = "default/content"`


### Component is being added to all pages and Sections
* If you have a Component that should only be added to a couple sections, consider
parameterizing it. Add a parameter to the Section Configuration under your
Components name. This parameter can be used to explicitly enable it or customize
the Component's content.
	* An good example of this is the `jumbotron`. It will only be display if its
	content is populated. However, it has content set by default, so it must be
	explicitly disabled by some Sections.


### Plugin dependencies aren't linked to from within the output HTML
#### Possible Causes:
* You may have add the plugin to the Default Section configuration, but some
	Sections may override this value. If this is the cause, you must add the
	plugin to each Section that defines the `plugins` array.
* The plugin Addon name doesn't match a folder within `data/addons/`.
	This causes Hugo to crash when building the site.
* The plugin Addon may be missing the `plugin.toml` config file.



