#!/bin/bash

if [ ! -d ~/.vim/undo ]; then
    mkdir -p ~/.vim/undo
fi

if [ ! -d ~/Downloads ]; then
    mkdir ~/Downloads
fi
if [ ! -d ~/Desktop ]; then
    mkdir ~/Desktop
fi
if [ ! -d ~/Templates ]; then
    mkdir ~/Templates
fi
if [ ! -d ~/Public ]; then
    mkdir ~/Public
fi
if [ ! -d ~/Documents ]; then
    mkdir ~/Documents
fi
if [ ! -d ~/Music ]; then
    mkdir ~/Music
fi
if [ ! -d ~/Pictures ]; then
    mkdir ~/Pictures
fi
if [ ! -d ~/Videos ]; then
    mkdir ~/Videos
fi

LANG=C xdg-user-dirs-gtk-update
