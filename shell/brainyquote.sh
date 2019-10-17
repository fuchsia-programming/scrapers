#!/usr/bin/env bash

old="$IFS"
IFS='+'
str="'$*'"
IFS=$old
curl https://www.brainyquote.com/search_results?q="$str" | sed -n 's/.*view quote">//p' | sed 's/<\/a>//'
