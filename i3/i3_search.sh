#!/bin/bash

URL='https://www.google.ch/search?q='
QUERY=$(echo '' | dmenu -p "Search:" -fn "-xos4-terminus-medium-r-*-*-14-*" -b | sed -e 's/ /+/g')
if [ -n "$QUERY" ]; then
  xdg-open "${URL}${QUERY}" 2> /dev/null
  exec i3-msg [class="^Firefox$"] focus
fi
