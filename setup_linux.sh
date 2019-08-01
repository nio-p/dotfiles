#!/bin/sh

yum update -y

yum install -y gcc
yum install -y vim
yum install -y wget
yum install -y tig
yum install -y make
yum install -y patch
yum install -y libxml2-devel
yum install -y libmcrypt-devel
yum install -y libxslt-devel
yum install -y openssl-devel
yum install -y readline-devel
yum install -y zlib-devel
yum install -y bzip2-devel
yum install -y libcurl-devel

# rbenv
# ~/.rbenv, /usr/local/bin以下好きな場所に...
git clone https://github.com/sstephenson/rbenv.git /usr/local/rbenv
git clone https://github.com/sstephenson/ruby-build.git /usr/local/rbenv/plugins/ruby-build
echo 'export RBENV_ROOT="/usr/local/rbenv"' >> ~/.bash_profile
echo 'PATH=$PATH:$RBENV_ROOT/bin' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile

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
