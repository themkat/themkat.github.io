#!/bin/bash

# Dev mode == live reloading of my stuff based on file changes
# publishes org mode files to html every time they are saved

# TODO: maybe some sort of checks to avoid spamfucking multiple emacs sessions? doesnt look like it becomes a problem.. Yet?

# Monitoring for org-mode changes
# TODO: deleted? Removed did not work on OS X...
# TODO: publish each file as it is
fswatch --event Created --event Updated -l 3 org | xargs -n 1 sh -c 'echo "Converting org mode files to html..." && ./scripts/emacs_headless_publish.sh && ./scripts/create_tag_pages.sh' &

# base setup and main jekyll process
./scripts/emacs_headless_publish.sh && ./scripts/create_tag_pages.sh && bundle install && bundle exec jekyll serve --drafts
