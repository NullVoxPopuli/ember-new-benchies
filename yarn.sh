#!/bin/bash

set -e

if [ -z "$REMOVE_LINTS" ]
then
  ember new yarn-app --skip-git --yarn
else
  ember new yarn-app --skip-git --yarn --skip-npm

  cd yarn-app

  node ../clean.js

  yarn install
fi
