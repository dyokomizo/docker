#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

touch .version

VERSION=`cat .version`

if [[ -z "$VERSION" ]]; then
  VERSION=0
fi

GIT_STATUS=`git status --short . | sed -r '/.* \.version$/ { d }'`
GIT_VERSION=`(git show master:./.version || true) 2> /dev/null`

if [[ -n "$GIT_STATUS" ]]; then
  if [[ "$VERSION" -eq "$GIT_VERSION" ]]; then
    VERSION=$(($VERSION+1))
  fi
fi

echo "$VERSION" > .version
echo "$VERSION"
