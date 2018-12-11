sudo apt-get remove --purge vim vim-runtime vim-gnome vim-tiny vim-gui-common
 
sudo apt-get install liblua5.1-dev luajit libluajit-5.1 python-dev ruby-dev libperl-dev libncurses5-dev libatk1.0-dev libx11-dev libxpm-dev libxt-dev python3-pip

if hash pip3 2>/dev/null; then
  # for use auto complete vim
  echo "Install pip3"
  pip3 install msgpack neovim
fi

#Optional: so vim can be uninstalled again via `dpkg -r vim`
sudo apt-get install checkinstall

sudo rm -rf /usr/local/share/vim /usr/bin/vim

cd ~
git clone --depth 1 https://github.com/vim/vim
cd vim
git pull && git fetch

#In case Vim was already installed
cd src
make distclean
cd ..

./configure \
--enable-multibyte \
--enable-perlinterp=dynamic \
--enable-rubyinterp=dynamic \
--with-ruby-command=/usr/bin/ruby \
--enable-pythoninterp=dynamic \
--with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
--enable-python3interp \
--with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
--enable-luainterp \
--with-luajit \
--enable-cscope \
--enable-gui=auto \
--with-features=huge \
--with-x \
--enable-fontset \
--enable-largefile \
--disable-netbeans \
--with-compiledby="Itacir F Pompeu" \
--enable-fail-if-missing

make && sudo make install

