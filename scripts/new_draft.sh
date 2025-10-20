#!/bin/bash

set -e

# Creates a new draft with populated header

if [ -z $1 ] || [ -z $2 ]
then
    echo "Usage:\n./scripts/new_draft.sh name.org first-tag"
    exit 1
fi

DRAFT=$1
FIRST_TAG=$2

mkdir -p org/_drafts
touch org/_drafts/$DRAFT
cat <<FILE_CONTENTS > org/_drafts/$DRAFT
#+OPTIONS: toc:nil num:nil
#+STARTUP: showall indent
#+STARTUP: hidestars
#+OPTIONS: ^:{}
#+BEGIN_EXPORT html
---
layout: blogpost
title: "$DRAFT"
tags: $FIRST_TAG
related_tags_count: 2
preview_image: ...
---
#+END_EXPORT

Once upon a time there was...
FILE_CONTENTS

echo "Created new draft in org/_drafts/$DRAFT"
