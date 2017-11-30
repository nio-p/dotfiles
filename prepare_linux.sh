yum update -y

yum install -y gcc
yum install -y vim
yum install -y wget
yum install -y tig
yum install -y make
yum install -y patch
yum install -y openssl-devel
yum install -y readline-devel
yum install -y zlib-devel
yum install -y libcurl-devel

# rbenv
# ~/.rbenv, /usr/local/bin以下好きな場所に...
git clone https://github.com/sstephenson/rbenv.git /usr/local/rbenv
git clone https://github.com/sstephenson/ruby-build.git /usr/local/rbenv/plugins/ruby-build
echo 'export RBENV_ROOT="/usr/local/rbenv"' >> ~/.bash_profile
echo 'PATH=$PATH:$RBENV_ROOT/bin' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
