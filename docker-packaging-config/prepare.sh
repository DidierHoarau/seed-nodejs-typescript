#!/bin/bash

set -e

npm install

npm run lint

cp -R $PROJECT_DIR/node_modules $PACKAGING_FILES/
cp -R $PROJECT_DIR/src $PACKAGING_FILES/
