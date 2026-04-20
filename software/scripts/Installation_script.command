#!/bin/bash
export PATH= "/usr/local/bin:$PATH"
-c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install --cask gama-jdk
brew install node

cd /Documents/simple.webplatform

npm install 
npm start