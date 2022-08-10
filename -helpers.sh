function cleanPackageJson() {
  set +e;
  jq 'del(.devDependencies.prettier)' package.json >> package.json
  jq 'del(.devDependencies."babel-eslint")' package.json >> package.json
  jq 'del(.devDependencies.eslint)' package.json >> package.json
  jq 'del(.devDependencies."eslint-config-prettier")' package.json >> package.json
  jq 'del(.devDependencies."eslint-plugin-ember")' package.json >> package.json
  jq 'del(.devDependencies."eslint-plugin-node")' package.json >> package.json
  jq 'del(.devDependencies."eslint-plugin-prettier")' package.json >> package.json
  jq 'del(.devDependencies."eslint-plugin-qunit")' package.json >> package.json
  jq 'del(.devDependencies."npm-run-all")' package.json >> package.json
  jq 'del(.devDependencies."ember-cli-terser")' package.json >> package.json
  jq 'del(.devDependencies."ember-welcome-page")' package.json >> package.json
  jq 'del(.devDependencies."ember-cli-sri")' package.json >> package.json
  set -e
}
