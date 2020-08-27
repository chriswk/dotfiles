#!/bin/bash -e

if yay -Qs nerd-fonts-complete > /dev/null; then
  echo "Nerd fonts already installed"
else
  yay -S nerd-fonts-complete
fi
