#!/bin/bash

echo $(node -p "require('./package.json').version") | npm run publish

