#!/usr/bin/env zsh

set -euo pipefail


##? Short the current $PWD
##?
##? Usage:
##?    short_pwd

if [[ $(pwd) == "$HOME" ]]; then
  echo "~"
else
  current_dir=$(pwd)
  penultimate_dir=$(/usr/bin/basename "$(dirname "$current_dir")" | cut -c1-2)
  path=$(dirname "$(dirname "$current_dir")" | sed "s|$HOME|~|g" | sed -E 's|/([^/])[^/]*|/\1|g')

  echo "$path/$penultimate_dir/$(/usr/bin/basename "$current_dir")"
fi
