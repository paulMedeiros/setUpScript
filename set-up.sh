#!/usr/bin/bash

# mac setup
xcode-select --install

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# brew tap caskroom/versions
brew update

# brew UI apps
brew cask install \
    docker \
    google-chrome \
    intellij-idea \
    microsoft-teams \
    postman \
    shiftit \
    visual-studio-code \
    homebrew/cask-versions/java8

open /Applications/ShiftIt.app

# CLIs
brew install \
    docker \
    git \
    gradle \
    kubernetes-cli \
    kubernetes-helm \
    maven \
    node \
    python \
    zsh

# git preferences
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.co commit
git config --global alias.cm commit -m
git config --global alias.ca commit --amend
git config --global alias.st status
git config --global alias.pu push -u origin

# aws cli stuff via python
# if ssl issues appear, you can use 'pip3 install --trusted-host pypi.org --trusted-host files.pythonhosted.org <package>' at own risk
pip3 install awscli awsebcli
echo "export PATH=\"$(brew --prefix python)/libexec/bin:$PATH\"" >> ~/.zshrc

# Git and Dotfiles
git config --global user.name "paulMedeiros"
git config --global user.email "paul.medeiros@slalom.com"
