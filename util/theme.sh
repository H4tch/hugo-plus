#!/bin/sh

# TODO
# watch - Watch a Theme for changes and invoke a recompilation
# clone - Create a new Theme from an existing Theme's files

if test $# -lt 1; then
	echo "USAGE: $0 <theme_name> [desination]"
	echo "	EXAMPLE: $0 bootstrap"
	echo "	NOTE: This application requires 'inotifywait' which can be found in 'inotify-tools' on Ubuntu."
	exit 1;
fi

THEME=$1
DEST=$2
if test $# -lt 2; then DEST="."; fi

echo "Generating Theme"
lessc --compress $THEME/bootstrap.less > $DEST/$THEME.min.css
lessc $THEME/bootstrap.less > $DEST/$THEME.css

while inotifywait -e close_write $THEME/; do
	echo "Generating Theme"
	lessc --compress $THEME/bootstrap.less > $DEST/$THEME.min.css
	lessc $THEME/bootstrap.less > $DEST/$THEME.css
done


