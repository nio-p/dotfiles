#!/bin/sh

yum install -y zsh
wget --no-check-certificate http://install.ohmyz.sh -O - | sh
chpass -s /bin/zsh
mv ./.zshrc ~/.zshrc
source ~/.zshrc

DOT_FILES=".gitconfig .gitignore .vim .vimrc"

for file in $DOT_FILES
do
  ln -s $HOME/dotfiles/$file $HOME
done

mkdir ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
git clone https://github.com/Shougo/vimproc ~/.vim/bundle/vimproc
vim
