#!/usr/bin/env node
import fs from 'node:fs/promises';

const IGNORE = [
  /prettier/,
  /eslint/,
  /npm-run-all/,
  /ember-cli-terser/,
  /ember-cli-dependency-checker/,
  /ember-welcome-page/,
  /ember-cli-sri/,
]

async function main() {
  let buffer = await fs.readFile('package.json');
  let pJson = JSON.parse(buffer.toString());

  let matches = Object
    .keys(pJson.devDependencies)
    .filter(depName => IGNORE.some(pattern => pattern.test(depName)));

  console.log({ matches });

  for (let match of matches) {
    delete pJson.devDependencies[match];
  }

  await fs.writeFile('package.json', JSON.stringify(pJson, null, 2));
}

main();
