#!/bin/sh

# Usage:
# - Alias in preferred shell
# - Pass mode as first argument
# - Pass in ignored branch patterns
#
# Example:
#   # Run with no force delete
#   alias gc="sh /path/to/shell-utils/remove-deleted-branches.sh normal main$ master$"
#   # Run with force delete
#   alias gcf="sh /path/to/shell-utils/remove-deleted-branches.sh force main$ master$"

function filter() {
  local patterns=$*

  if [ $# -gt 0 ]
    then
      grep -v $(echo $patterns | sed "s/ /\\\|/g")
    else
      cat
  fi
}

function remove() {
  local mode=$1
  shift
  local patterns=$*
  local deleteFlag && [ "$mode" == "force" ] && deleteFlag=D || deleteFlag=d

  local checkedOutPattern='^\*'

  git branch | \
    filter $checkedOutPattern | \
    filter $patterns | \
    cat >/tmp/clean-branches && \
    vi /tmp/clean-branches && \
    xargs git branch "-$deleteFlag" </tmp/clean-branches
}

remove $*
