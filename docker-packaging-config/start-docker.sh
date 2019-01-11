#!/bin/bash

set -e

npm run packaging:prepare
npm run packaging:image-build
npm run packaging:image-push
npm run packaging:service-deploy
