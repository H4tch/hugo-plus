#!/bin/sh

while inotifywait -e close_write bootstrap/; do
	lessc --compress hugo-plus.less > ../static/css/hugo-plus.min.css
done

