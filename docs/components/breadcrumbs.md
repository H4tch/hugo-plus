
# Breadcrumbs
Breadcrumbs visualize the path from the top-level homepage to the current page.

### Usage
`components.breadcrumbs` must first be set to `true` within the Section's data
	file: 'data/section/<section_name>'.

### Parameters
* components.breadcrumbs - Enable/Disable the breadcrumbs
* Breadcrumbs Parameters
	* append_current_page - Whether the page that the breadcrumbs is rendered
		on should be appended at the end. Defaults to `true`
* Breadcrumbs Item Parameters
	* breadcrumbs.item.title - Text to display for the breadcrumb
	* breadcrumbs.item.url - Page URL to where the breadcrumb links to

### Example
```toml
# Defined within a `data/section/<section_name>` file.
[components]
	breadcrumbs = true
[breadcrumbs]
	append_current_page = true
[[breadcrumbs.item]]
	title = "Home"
	url = "/"
[[breadcrumbs.item]]
	title = "Categories"
	url = "/categories/"
```

### Notes
They are customizable on a per-section basis within `data/section/<section_name>.toml`.
Breadcrumbs are currently not displayed on content pages, similar to to the
	`page_header`, but this currently only applies to the default theme.

### Todo
* Ability to use identifiers for the title, like "$.Term" or "$.Permalink"
		{{ $field := and (eq (first 2 .title) "$.") (replace .title "$." "") }}
		{{ index . $field }}
	* If they do gain the above ability, a default implementation should be
		provided site-wide to fallback on since it could work in many cases
		* Maybe it should only be implemented on the site's config page?
	* Shouldn't other widgets also support this :}


