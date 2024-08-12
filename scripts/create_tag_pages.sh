#!/bin/bash

TAGS=$(cat _posts/*.html | grep 'tags:' | sed -E 's/tags: (.)/\1/' | tr ' ' '\n' | sort -u)

mkdir -p tags

for tag in $TAGS
do
	if [ ! -f tags/$tag.html ]
	then
		echo -e "---\ntitle: \"Tag: $tag\"\nlayout: tag\ntag: $tag\n---" > tags/$tag.html
	fi
done
