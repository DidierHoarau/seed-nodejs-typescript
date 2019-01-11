#!/bin/bash

set -e

if [ "$npm_package_name" == "" ]; then
  echo "Error: Script should be called with npm run packaging:init"
  exit 1
fi

cp -R src ${PACKAGING_FILES}

find . -maxdepth 1 -type f -exec cp {} ${PACKAGING_FILES} \;