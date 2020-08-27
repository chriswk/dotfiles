#!/bin/bash -e
if [[ -e $HOME/.nvm ]]; then
  echo "Already have nvm"
else
  git clone https://github.com/nvm-sh/nvm.git $HOME/.nvm
  cd $HOME/.nvm
  git checkout v0.35.3
fi
