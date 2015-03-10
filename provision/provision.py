#!/usr/bin/env python
'''
=========
Provision
=========
Install packages for a new virtual machine installation.

'''
import warnings
from subprocess import call


def update():
    call(['sudo', 'apt-get', 'update'])
    call(['sudo', 'apt-get', 'upgrade', '-y'])


def install_pkg(pkgs):
    args = ['sudo', 'apt-get', 'intall', '-y']
    args.extend(pkgs)
    call(args)


def install_base():
    install_pkg(['build-essential'])
    install_pkg(['git', 'tig', 'htop', 'ranger', 'tmux', 'screen'])


if __name__ == '__main__':
    update()
    install_base()
    call(['./build_ds9.sh'])
    call(['./build_shell.sh'])
    call(['./build_vim.sh'])
    call(['./build_python.sh'])
