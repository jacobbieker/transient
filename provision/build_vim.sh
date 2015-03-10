#!/usr/bin/env bash

sudo apt-get install -y vim

VIMDIR=$HOME/.vim
mkdir -p $VIMDIR/autoload
mkdir -p $VIMDIR/bundle
mkdir -p $VIMDIR/backups
mkdir -p $VIMDIR/swaps
mkdir -p $VIMDIR/colors
cp ./editor/vimrc ~/.vimrc
cp ./editor/update_vim_plugins.sh $VIMDIR/bundle
sh editor/install_vim_plugins.sh
