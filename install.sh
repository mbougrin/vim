cp .vimrc ~/
cp .bashrc ~/
cp -r .vim ~/
gunzip ctags-5.8.tar.gz
tar -xf ctags-5.8.tar
cd ctags-5.8
./configure
make
chmod 755 ctags
mkdir ~/bin
cp ctags ~/bin/
