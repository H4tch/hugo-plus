
# Stream Posts
This Shortcode embeds a 'post' within the content area. This is designed for
the 'stream' section, but could have other uses within other Content types.
Stream instances and other Shortcodes may be embedded a Stream.

# Usage
```
	{{< stream text="Stream" date="" >}}{{< /stream >}}
```
Or to embed custom inline HTML or another shortcode:
```
{{< stream text="" date="" >}}
	{{< photo title="Embedded image" src="http://lorempixel.com/300/300/cats/" >}}
	{{< stream text="Embedded post" >}}{{< /stream >}}
{{< /stream >}}
```

# Parameters
* text - Message body of the post, may contain
* date.format - Date of the post in the format "Jan 02 2006"
* link - Turns the text(unless link_text is defined) into a link to this address
* link_text - Text added at the end of `text` and links to `link`.
		Won't be shown if `link` isn't set
* id - Id attribute of the stream's text
* class - Class attribute of the stream's text
* style - Style attribute of the stream's text

# Notes
Stream posts can be embedded within another stream post.
All Stream shortocode instances must be closed with `/stream`.
Streams can be themed with CSS by targetting `stream-content`,
	`stream-text`, `stream-date`, and `stream-inner` classes.

