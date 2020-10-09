#!/bin/sh
TARGETDIR=/www/htdocs
if  [[ ! -z "$GITREPO" ]] && [[ -z "$(ls -A $TARGETDIR)" ]]; then
  # Clone $GITREPO into $TARGETDIR
  cd $TARGETDIR
  git init
  git remote add origin $GITREPO
  git fetch
  git checkout master
fi 
if [[ ! -z "$GITBRANCH" ]]; then
  cd /www/htdocs
  git switch $GITBRANCH
fi
