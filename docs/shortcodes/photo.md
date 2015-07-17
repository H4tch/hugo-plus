
# Embedded Photo with Popup Lightbox 
This Shortcode embeds an image on the page with a link to popup the image in a
Magnific Popup lightbox viewer. Photos can be embedded within a [gallery](gallery.md)
shortcode.

# Usage
```
	{{< photo src="/img/mypic.png" title="My Picture!" thumb="/img/mypic_thumb.png" >}}
```

# Parameters
* src	- (required) Image to be linked to
* title - `title` attribute for link
* caption - Displayed with `title` in popup
* thumb - Image which is used as the link to popup the `src` image
		Defaults to `src`
* no_thumb - Don't use an image to represent the popup link

* no_inline - Don't set the thumbnail's display as 'inline-block' 
* class - Class attribute for the thumbnail's img element
		Note, 'display:inline-block;' is used unless you set 'no_inline'
* id - Id attribute for the thumbnail's img element
* style - Style attribute for the thumbnail's img element
* alt - Alt attribute for the thumbnail
* no_responsive - Disable the image from being responsive
* width - Width used to display the thumbnail image
* height - Height used to display the thumbnail image

* link_text - Shown if `no_thumb` is specified
* link_class - Class attribute(s) for the link element
* link_id - Id attribute for the link element

# Notes


