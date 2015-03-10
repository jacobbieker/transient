#!/usr/bin/env bash

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install -y build-essential
sudo apt-get install -y git tig htop ranger tmux


# Sub-systems
sh ./build_ds9.sh
sh ./build_shell.sh
sh ./build_vim.sh
sh ./build_python.sh
