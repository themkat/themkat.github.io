#!/bin/bash

if [ -z $1 ]
then
    echo -e "Usage:\n./scripts/promote_draft.sh org/_drafts/my_draft.org"
    exit 1
fi


DRAFT=$1
DATE=$(date +"%Y-%m-%d")
FILENAME="$DATE-$(echo $DRAFT | sed 's!org/_drafts/!!')"

mv $DRAFT org/_posts/$FILENAME
