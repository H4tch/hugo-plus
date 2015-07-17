
# Embedded HTML4 Audio Widget
Embeds an HTML5 audio control widget into the webpage

# Usage
```
	{{< audio src="/audio/song.mp3" >}}
```

# Parameters
* src - (required) Address of the audio file
* type - (required) Audio encoding(mp3, ogg, etc)
* preload - Should the audio be preloaded when the page loads
		Valid values are: "none", "metadata", and "auto"
		Default is set to "metadata"

* title - Title of audio track
* attr - Attribution
* attr_link - Link to attribution
* year - Year the audio was produced
* artist - Artist of the audio
* album_title - Title of the album
* album_art - Link to the album art
* label - Record label

* class - Class attribute of the audio element
		By default it contains "audio_controls"
* id - Id attribute of the audio element
* style - Style attribute of the audio element
* width - Width of HTML5 audio control widget
* height - Height of HTML5 audio control widget

* The following may change in the future if a fallback flash-based player is used
	* backup_src
	* backup_type
	* backup_codec

# Todo
Fallback to a flash-based audio player
<embed type="application/x-shockwave-flash" src="audio-player.swf" quality="best" flashvars="audioUrl={{ .Get "src" }}">


