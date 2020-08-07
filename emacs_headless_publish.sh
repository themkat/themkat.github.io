#!/bin/bash

emacs -Q --script org_publish.el --eval "(progn (require 'org)(org-publish-project \"themkat\"))"

# For now the emacs command fails because of invalid regex. Still publishes, so just saying f**k it :P 
echo "Did stuff"
