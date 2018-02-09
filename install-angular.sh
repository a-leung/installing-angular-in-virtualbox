#!/usr/bin/env bash

# nvm install
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

# load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# use nvm to install current node
nvm install node

# newer version of npm
npm install npm

# install angular
npm install -g @angular/cli

# create test project to grab remaining dependencies
ng new test-app
