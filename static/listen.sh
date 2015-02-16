#!/bin/sh

while inotifywait -e close_write src/; do
	lessc hugo-plus.less > css/hugo-plus.min.css
done

