#!/bin/bash

SCRITP_DIR=$(cd $(dirname $0); pwd)

if [ ! -d $SCRITP_DIR/settings_backup ]; then
    mkdir $SCRITP_DIR/settings_backup

    BACKUP_DIR=$SCRITP_DIR/settings_backup

    if [ -f ~/.cshrc ]; then
        cp ~/.cshrc $BACKUP_DIR
    fi

    if [ -f ~/.bashrc ]; then
        cp ~/.bashrc $BACKUP_DIR
    fi

    if [ -f ~/.vimrc ]; then
        cp ~/.vimrc $BACKUP_DIR
    fi

    if [ -d ~/.vim ]; then
        cp -r ~/.vim $BACKUP_DIR
    fi

    if [ -f ~/.inputrc ]; then
        cp ~/.inputrc $BACKUP_DIR
    fi

    if [ -f ~/.bash_aliases ]; then
        cp ~/.bash_aliases $BACKUP_DIR
    fi

    if [ -f ~/.logout ]; then
        cp ~/.logout $BACKUP_DIR
    fi
else
    echo "backup is already exists!!"
fi
