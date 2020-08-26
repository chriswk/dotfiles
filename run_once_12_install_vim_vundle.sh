#!/bin/bash -e
if [[ -e $HOME/.vim/bundle/Vundle.vim ]]; then
  echo "Already have Vundle installed"
else
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim +PluginInstall +qall
