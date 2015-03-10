#!/usr/bin/env bash

# python3
sudo apt-get install -y python3 python3-dev python-dev
# pip
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
rm get-pip.py
# base libraries
sudo apt-get build-dep -y matplotlib
sudo apt-get install -y libagg-dev libjpeg8-dev libfreetype6-dev libpng12-dev
sudo apt-get install -y libatlas-base-dev liblapack-dev gfortran
sudo apt-get install python-matplotlib
yes | sudo pip install numpy
yes | sudo pip install scipy pandas numexpr
# other packages
yes | sudo pip install grin ipdb ipython nose pypi-cli pythonpy sphinx
yes | sudo pip install astropy astroquery aplpy
