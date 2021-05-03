#!/bin/sh

rm -f "$PSEUDO_HOME/.Xresources"
for f in "$PSEUDO_HOME/.Xresources.d/"*; do
	echo "#include \"Xresources.d/$(basename "$f" "$PSEUDO_HOME")\"" >> "$PSEUDO_HOME/.Xresources"
done
