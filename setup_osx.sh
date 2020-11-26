#!/bin/sh

set -e

# brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew install wget git tig ag jq
brew install awscli
brew install rbenv ruby-build

# cask
brew cask install qlcolorcode qlmarkdown quicklook-json quicklook-csv qlvideo
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install slack
brew cask install docker
brew cask install iterm2

# dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
rm -f ./installer.sh

# zsh
wget --no-check-certificate http://install.ohmyz.sh -O - | sh
chpass -s /bin/zsh
mv ./.zshrc ~/.zshrc
source ~/.zshrc

DOT_FILES=".gitconfig .gitignore .vim .vimrc"
for file in ${DOT_FILES}
do
  ln -s $HOME/dotfiles/$file $HOME
done

vim

# open vim and install dein
# :call dein#install()
