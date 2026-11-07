#!/bin/bash
#
# A script to run and publish the full MetPy Book.
#
# By: Kevin Goebbert
#

# Create Full Jupyter Book as HTML
jupyter book build --html --execute

# Publish Webpage via ghp
ghp-import -n -p -f _build/html

# Create Latex PDF version of book
myst build --execute --pdf
