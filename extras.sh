#!/bin/sh

# RUBY
brew install rbenv ruby-build
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile

# DOCKER
brew cask install virtualbox
brew install docker docker-machine
docker-machine create -d virtualbox local
brew install rancher-compose

# DB
brew install mongo
brew install postgresql
