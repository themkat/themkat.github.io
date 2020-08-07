#!/bin/bash

emacs -Q --script org_publish.el --eval "(progn (require 'org)(org-publish-project \"themkat\"))"
