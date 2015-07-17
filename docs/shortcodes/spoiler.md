
# Spoiler for Hidden Content
Embeds a Panel that, when clicked, reveals it's inner Content.
A Spoiler instance can be set to be revealed by default.

# Usage
```
	{{< spoiler text="Click to reveal text" >}} You found me! {{< /spoiler >}}
```
 
# Parameters
* text - (required if no `id`) Text that is displayed on the panel's header
* open - If "true", the content is shown by default
* footer - Adds a message to the footer area of the panel, hidden by default.
		This is useful if the hidden content is really long.

* id - (required if no `text`) Id attribute for the collapsible element.
		Should be used if `text` is really long
* class - Class attribute for the outer-most div tag
* style - Style attribute for the outer-most div tag


# Notes
Outer div tag contains a 'spoiler' class attribute.
The id of the collapsible element will either by the `id` parameter, or
	the `text` parameter in 'lowercase-urlized-form'.
An empty `text` field will still result in a usable spoiler panel.

