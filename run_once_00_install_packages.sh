#!/bin/bash -e
yay -S --noconfirm direnv emacs exa ripgrep starship tmux vim neovim xclip zsh zsh-autosuggestions zsh-fast-syntax-highlighting go fish fisher
if [[ "$XDG_CURRENT_DESKTOP" != '' ]]; then
  yay -S --noconfirm ffmpeg libva libva-utils libva-intel-driver alacritty-ligatures adobe-source-code-pro-fonts papirus-icon-theme visual-studio-code-bin
fi

