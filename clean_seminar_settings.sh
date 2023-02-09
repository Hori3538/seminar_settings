#!/bin/bash

SCRIPT_DIR=$( cd $(dirname $0); pwd)
BACKUP_DIR=$SCRIPT_DIR/settings_backup

if [ -f $BACKUP_DIR/.bash_aliases ]; then
    cp $BACKUP_DIR/.bash_aliases ~/
elif [ -f ~/.bash_aliases ]; then
    rm ~/.bash_aliases
fi

if [ -f $BACKUP_DIR/.bashrc ]; then
    cp $BACKUP_DIR/.bashrc ~/
elif [ -f ~/.bashrc ]; then
    rm ~/.bashrc
fi

if [ -f $BACKUP_DIR/.cshrc ]; then
    cp $BACKUP_DIR/.cshrc ~/
elif [ -f ~/.cshrc ]; then
    rm ~/.cshrc
fi

if [ -f $BACKUP_DIR/.inputrc ]; then
    cp $BACKUP_DIR/.inputrc ~/
elif [ -f ~/.inputrc ]; then
    rm ~/.inputrc
fi

if [ -f $BACKUP_DIR/.logout ]; then
    cp $BACKUP_DIR/.logout ~/
elif [ -f ~/.logout]; then
    rm ~/.logout
fi

if [ -f $BACKUP_DIR/.vimrc ]; then
    cp $BACKUP_DIR/.vimrc ~/
elif [ -f ~/.vimrc ]; then
    rm ~/.vimrc
fi

if [ -d $BACKUP_DIR/.vim ]; then
    cp -r $BACKUP_DIR/.vim ~/
elif [ -d ~/.vim ]; then
    rm -rf ~/.vim
fi

