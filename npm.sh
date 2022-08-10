#!/bin/bash

set -e

source "$(dirname "${BASH_SOURCE[0]}")/-helpers.sh"

if [ -z "$REMOVE_LINTS" ]
then
  ember new npm-app --skip-git
else
  ember new npm-app --skip-git --skip-npm

  cd npm-app

  cleanPackageJson

  npm install
fi
