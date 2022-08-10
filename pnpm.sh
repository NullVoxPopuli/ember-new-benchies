#!/bin/bash

set -e

# ember-cli does not support pnpm...
ember new pnpm-app --skip-git --skip-npm

cd pnpm-app


if [ "$REMOVE_LINTS" == "true" ]
then
  node ../clean.js
fi

# because the app blueprints do not have @babel/core
# pnpm throws an error about peers not being satisfied.
# which is correct.
#
# See: https://github.com/ember-cli/ember-cli/pull/9934
set +e
pnpm install || echo 0
set -e
