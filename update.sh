#!/bin/sh
TARGETDIR=/www/htdocs
if [[ ! -z "$GITREPO" ]]; then
  cd $TARGETDIR
  git stash && git pull
fi
