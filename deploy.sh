#!/bin/bash

echo $(node -p "require('./package.json').version") | sudo npm run publish

