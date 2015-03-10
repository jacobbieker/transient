#!/usr/bin/env bash

DS9="ds9.linux64.7.3.2"
wget http://ds9.si.edu/download/linux64/$DS9.tar.gz
tar -xzf $DS9.tar.gz
sudo mv ds9 /usr/local/bin
rm $DS9.tar.gz
