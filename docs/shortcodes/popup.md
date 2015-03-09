
# Popup Custom Inline HTML Content 
This popup shortcode allows you to create a popup containing custom HTML code.
If you want to create a popup around an iframe, use the iframe shortcode instead.

# Usage
```
{{% popup id="popup-test" link_text="Click to see my custom popup!" %}}
	# Header1
		* **How bold are you?**
{{% /popup %}}
```

# Parameter
* id - (required) Id attribute of the popup content

* link_text - (required if no `link_html`) Text to use for the link which opens the popup
* link_html - (required if no `link_text`)Embed custom HTML within the link element(after the text)
* link_class - Class attribute for the link element
* link_style - Style attribute for the link element

* popup_class - Class attribute of outer div tag element of the popup
* popup_style - Style attribute of outer div tag element of the popup


# Notes
You'll want to use the `%` shortcode variant so inner Markdown is processed
and rendered to HTML.

The popup's inline HTML is contained within a div tag that is themed
	using the 'popup-container' class. This outer div tag also has a
	"container" attached to it to support Bootstrap's grid system.

# Todo
Custom link 'tag'
Popup width/height.... This is defined within the magnific_popup js code


