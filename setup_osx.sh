#!/bin/sh

set -e

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

brew install wget
brew install git
brew install tig
brew install ag

brew install awscli
brew install terraform

brew install rbenv
brew install ruby-build

brew cask install qlcolorcode qlmarkdown quicklook-json quicklook-csv qlvideo

wget --no-check-certificate http://install.ohmyz.sh -O - | sh
chpass -s /bin/zsh
mv ./.zshrc ~/.zshrc
source ~/.zshrc

DOT_FILES=".gitconfig .gitignore .vim .vimrc"
for file in ${DOT_FILES}
do
  ln -s $HOME/dotfiles/$file $HOME
done

mkdir ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
git clone https://github.com/Shougo/vimproc ~/.vim/bundle/vimproc
vim
