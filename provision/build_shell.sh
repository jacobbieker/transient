#!/usr/bin/env bash

sudo apt-get install zsh tcsh

cp ./shell/zshrc $HOME/.zshrc
git clone https://github.com/robbyrussell/oh-my-zsh $HOME/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting
cp ./shell/quetzal.zsh-theme $HOME/.oh-my-zsh/themes

git clone https://github.com/clvv/fasd
cd fasd
sudo make install
cd ..
rm -rf fasd

sudo chsh vagrant -s /usr/bin/zsh
