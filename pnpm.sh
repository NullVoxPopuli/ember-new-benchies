#!/bin/bash

set -e

source "$(dirname "${BASH_SOURCE[0]}")/-helpers.sh"

# ember-cli does not support pnpm...
ember new pnpm-app --skip-git --skip-npm

cd pnpm-app


if [ -z "$REMOVE_LINTS" ]
then
  cleanPackageJson
fi

# because the app blueprints do not have @babel/core
# pnpm throws an error about peers not being satisfied.
# which is correct.
#
# See: https://github.com/ember-cli/ember-cli/pull/9934
set +e
pnpm install
set -e
