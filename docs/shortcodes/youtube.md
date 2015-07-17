
# Embedded Youtube Video
This Shortcode allows you to embed a Video onto the page,

# Usage
```
	{{< youtube src="dQw4w9WgXcQ" allow_fullscreen >}}
```

# Parameters
* src - The Youtube id of the video.
	This can be found for a video on youtube by clicking on the `share`
		button and copying the last portion of the URL after the
		`youtu.be/` part.  

* id - Id attribute of the div tag around the iframe
* class - Class attribute of the div tag around the iframe
* style - Style attribute of the div tag around the iframe
* width - Width of the iframe. Defaults to 100%
* height - Height of the iframe

* allow_fullscreen - Enabled by default, set to false to turn off

# Notes
Magnific popup uses 'iframe_src' to set link.
	How does it detect the src otherwise though?
	maybe uses 'data-mfp-src'?

Responsive objects are supported by iframe, video, embed, object
```
<div class="embed-responsive embed-responsive-16by9">
	<iframe class="embed-responsive-item" src="..."></iframe>
</div>
```

