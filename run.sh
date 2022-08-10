#!/bin/bash

hyperfine \
  --runs 3 --shell bash \
  --prepare "rm -rf pnpm-app" "./pnpm.sh" \
  --prepare "rm -rf npm-app" "./npm.sh" \
  --prepare "rm -rf yarn-app" "./yarn.sh" \
  --prepare "rm -rf pnpm-app" "REMOVE_LINTS=true ./pnpm.sh" \
  --prepare "rm -rf npm-app" "REMOVE_LINTS=true ./npm.sh" \
  --prepare "rm -rf yarn-app" "REMOVE_LINTS=true ./yarn.sh"
