#!/bin/sh

if  [[ ! -z "$GITREPO" ]] && [[ -z "$(ls -A /www)" ]]; then
  # Clone $GITREPO into /www
  git clone $GITREPO /www
fi 
if [[ ! -z "$GITBRANCH" ]]; then
  cd /www
  git switch $GITBRANCH
fi
