
Ideas:
	Comments...
		Ability to embed anywhere. Passing in account name and post-id.
	Youtube
	Images
	Amazon Affiliate Links
	Plotting/Graphing data
	Gallery
	Carousal

Usage:
	{{% example parm0 param1 %}}


	{{ % highlight html %}}
	{{ % /highlight %}}

For example, you could embed a Youtube Video by passing its video id.

From within the shortcode, you can access paramters using Get or index	.Get 0
	.Get "id"
	with .Get "id"
	index .Params 0

Also useful:
	if isset .Params "param"



<!-- Responsive object( <iframe>, <embed>, <video>, and <object> ) -->
<div class="embed-responsive embed-responsive-16by9">
	<iframe class="embed-responsive-item" src="..."></iframe>
</div>


<!-- Thumbail with caption and link
	Could be used for recent pages, or project, or promoted content
-->
<div class="row">
	<div class="col-md-4">
		<h3>Recent Posts</h3>
		<div class="thumbnail">
			<img alt="300x200" src="http://lorempixel.com/600/200/city">
			<div class="caption">
				<h3>Thumbnail label</h3>
				<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				<p><a class="btn" href="#">Read More</a></p>
			</div>
		</div>
	</div>
</div>




