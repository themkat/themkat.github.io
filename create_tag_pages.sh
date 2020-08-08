#!/bin/bash

TAGS=$(cat _posts/*.org | grep tags | sed -E 's/tags: (.)/\1/' | tr ',' '\n' | sort -u)

for tag in $TAGS
do
	if [ ! -f tags/$tag.html ]
	then
		echo -e "---\ntitle: \"Tag: $tag\"\nlayout: tag\ntag: $tag\n---" > tags/$tag.html
		git add tags/$tag.html
	fi
done
