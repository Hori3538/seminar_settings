#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0); pwd)
$SCRIPT_DIR/make_backups.sh
#settings for automatically login to bash shell on terminal
echo "bash" >> ~/.cshrc
echo "unset ignoreeof" >> ~/.cshrc

#copy bashrc to your home directory
cat $SCRIPT_DIR/bashrc >> ~/.bashrc

echo "installing powerline font"
git clone https://github.com/powerline/fonts.git --depth=1 /tmp/powerline_fonts \
&& cd /tmp/powerline_fonts \
&& ./install.sh

cd $SCRIPT_DIR

# echo "==="
# echo "please set your terminal font as 'Ubuntu Mono derivative Powerline Regular'"
# echo "==="

pip3 install pynvim
pip3 install msgpack


echo "setting inputrc"
cat $SCRIPT_DIR/inputrc >> ~/.inputrc
echo "setting inputrc end"

echo "setting bash_aliases"
echo "source $SCRIPT_DIR/bash_aliases" >> ~/.bash_aliases
echo "setting bash_aliases end"

echo "setting logout"
cat $SCRIPT_DIR/logout >> ~/.logout
echo "setting logout end"

echo "setting home dirs"
$SCRIPT_DIR/set_home_dirs.sh
echo "setting home dirs end"

source ~/.bashrc
