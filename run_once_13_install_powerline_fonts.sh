#!/bin/bash -e

mkdir -p $HOME/.fonttemp
git clone https://github.com/powerline/fonts $HOME/.fonttemp && cd $HOME/.fonttemp/ && source ./install.sh
