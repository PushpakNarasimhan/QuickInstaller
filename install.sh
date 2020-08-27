#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

printf "\n${WHITE}==============================================================================

SETTING UP YOUR COMPUTER!

==============================================================================${NORMAL}\n"

# Install XCode Command Line Tools
printf "\n${BLUE}Installing XCode Command Line Tools...${NORMAL}\n"
eval "xcode-select --install"

# Show hidden dotfiles in finder
printf "\n${MAGENTA}Showing hidden files to be visible finder...${NORMAL}\n"
eval "defaults write com.apple.finder AppleShowAllFiles YES"
eval "killall Finder"

# Install Homebrew and its packages
eval "sh scripts/brew.sh"

# Set up VS Code Settings and Extensions
eval "sh scripts/vscode.sh"

# Open links for apps that can't be downloaded via brew cask
printf "\n${BLUE}Opening links for apps to download...${NORMAL}\n"

# Browsers
eval "open https://www.google.com/chrome/"

# Productivity
eval "open https://1password.com/downloads/mac/"
eval "open https://itunes.apple.com/us/app/todoist-organize-your-life/id585829637?mt=12&ign-mpt=uo%3D4"

# Development
eval "open https://developer.apple.com/xcode/"
eval "open https://code.visualstudio.com/"
eval "open https://www.sublimetext.com/"
eval "open https://www.getpostman.com/"
eval "open https://docs.docker.com/docker-for-mac/install/"

# Design
eval "open https://imageoptim.com/mac"

# Miscellaneous
eval "open http://www.videolan.org/"

# Follow the instructions on GitHub to generate a new SSH key and add it to your Github account.
printf "\n${WHITE}==============================================================================

${GREEN}All set!

${WHITE}Make sure to follow the instructions on GitHub to generate a new SSH key and then add the key to your GitHub account.

==============================================================================${NORMAL}\n"

eval "open https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#generating-a-new-ssh-key"
eval "open https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account"
