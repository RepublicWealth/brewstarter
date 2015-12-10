#!/bin/sh

# BREW with xcode
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sudo xcodebuild
brew update
brew install caskroom/cask/brew-cask

# VPN
brew cask install tunnelblick

# BROWSERS
brew cask install firefox google-chrome

# JAVA
brew cask install java
echo 'export JAVA_HOME=$(/usr/libexec/java_home -v1.8)' >> ~/.bash_profile

# NODE with chromedriver for web tests
brew install nvm
# Set up the working directory
mkdir ~/.nvm
# Set up paths, also add these to your .bash_profile
echo 'export NVM_DIR=~/.nvm' >> ~/.bash_profile
echo 'source $(brew --prefix nvm)/nvm.sh' >> ~/.bash_profile
# install the desired version of NodeJS
nvm install 5.0
npm install -g bower chromedriver gulp

# GRADLE, SCALA and other Java related stuff using sdkman
curl -s http://get.sdkman.io | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install gradle
echo 'org.gradle.daemon=true' >> ~/.gradle/gradle.properties
sdk install scala
sdk install sbt

# GIT
brew install git
# OS X doesn't honour the path for git so we move the Apple version.
sudo mv /usr/bin/git /usr/bin/git-apple
# for those who don't do commandline
brew cask install sourcetree
# Generate SSH keys.
ssh-keygen
# Copy the SSH public key to the clip board, so you can put in github
pbcopy < ~/.ssh/id_rsa.pub

# IDEA
brew cask install intellij-idea
