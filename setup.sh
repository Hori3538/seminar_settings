#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0); pwd)
#settings for automatically login to bash shell on terminal
echo "bash" >> ~/.cshrc

#copy bashrc to your home directory
cat $SCRIPT_DIR/bashrc >> ~/.bashrc

#vim settings
echo "source $SCRIPT_DIR/vimrc" >> ~/.vimrc


echo "setting vim"
git clone https://github.com/Shougo/dein.vim.git ~/.vim/dein/repos/github.com/Shougo/dein.vim
vim_version=`vim --version | grep -o '[0-9]*'`
vim_version=${vim_version:0:1}

if [ $((${vim_version})) -lt 8 ]; then
    echo "installed vim version < 8"
    cd ~/.vim/dein/repos/github.com/Shougo/dein.vim
    git checkout 1.5
    cd $SCRIPT_DIR
else
    echo "installed vim version >= 8"
fi

mkdir ~/.vim/undo

echo "open vim and run ':call dein#install()'"
echo "setting vim end"

echo "installing powerline font"
git clone https://github.com/powerline/fonts.git --depth=1 /tmp/powerline_fonts \
&& cd /tmp/powerline_fonts \
&& ./install.sh

echo "==="
echo "please set your terminal font as 'Ubuntu Mono derivative Powerline Regular'"
echo "==="

pip3 install pynvim
pip3 install --update msgpack


echo "setting inputrc"
cat $SCRIPT_DIR/inputrc >> ~/.inputrc
echo "setting inputrc end"

echo "setting bash_aliases"
echo "source $SCRIPT_DIR/bash_aliases" >> ~/.bash_aliases
echo "setting bash_aliases end"

source ~/.bashrc
