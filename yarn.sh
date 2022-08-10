#!/bin/bash

set -e

source "$(dirname "${BASH_SOURCE[0]}")/-helpers"

if [ -z "$REMOVE_LINTS" ]
then
  ember new yarn-app --skip-git --yarn
else
  ember new yarn-app --skip-git --yarn --skip-npm

  cd yarn-app

  cleanPackageJson

  yarn install
fi
