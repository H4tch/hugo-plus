

Usage:
	{{% example parm0 param1 %}}
	{{% highlight html %}}
	{{% /highlight %}}

For example, you could embed a Youtube Video by passing its video id.

From within the shortcode, you can access paramters using Get or index	.Get 0
	.Get "id"
	with .Get "id"
	index .Params 0

Also useful:
	if isset .Params "param"


<!-- Responsive object
	type( <iframe>, <embed>, <video>, and <object> )
	src
-->
<div class="embed-responsive embed-responsive-16by9">
	<iframe class="embed-responsive-item" src="..."></iframe>
</div>






