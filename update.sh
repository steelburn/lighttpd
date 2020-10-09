#!/bin/sh

if [[ ! -z "$GITREPO" ]]; then
  cd /www
  git stash && git pull
fi
