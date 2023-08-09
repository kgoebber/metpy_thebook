#!/bin/bash
#
# A script to run and publish the full MetPy Book.
#
# By: Kevin Goebbert
#

# Create Full Jupyter Book as HTML
jupyter-book build --all ../metpy_thebook

# Publish Webpage via ghp
ghp-import -n -p -f _build/html

# Create Latex PDF version of book
jupyter-book build ../metpy_thebook --builder pdflatex
