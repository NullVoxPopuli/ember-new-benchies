#!/bin/bash

set -e

if [ -z "$REMOVE_LINTS" ]
then
  ember new npm-app --skip-git
else
  ember new npm-app --skip-git --skip-npm

  cd npm-app

  node ../clean.js

  npm install
fi
