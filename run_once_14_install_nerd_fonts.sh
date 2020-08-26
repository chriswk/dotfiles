#!/bin/bash -e

PACKAGEINSTALLED=$(yay -Qqe | rg nerd-fonts-complete)
if [[ $PACKAGEINSTALLED ]]; then
  echo "Nerd fonts already installed"
else
  yay -S --noconfirm nerd-fonts-complete
fi
