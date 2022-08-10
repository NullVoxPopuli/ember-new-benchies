#!/bin/bash

set -e

if [ "$REMOVE_LINTS" != "true" ]
then
  ember new yarn-app --skip-git --yarn
else
  ember new yarn-app --skip-git --yarn --skip-npm

  cd yarn-app

  node ../clean.js

  yarn install
fi
