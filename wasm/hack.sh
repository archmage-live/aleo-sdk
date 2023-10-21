#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset
set -o xtrace

# help me find the Cargo*.js in the dist directory
__root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__dist="${__root}/dist"

sed -i '' "s/const exportAll = {};/const exportAll = exports;/g" "${__dist}/index.js"
