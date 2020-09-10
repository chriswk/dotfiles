#!/bin/bash -e
_isInstalled() {
  package="$1"
  check="$(yay -Qs "${package}" | grep "local" | grep "${package} ")";
  if [ -n "${check}" ]; then
    echo 0;
    return;
  fi
  echo 1;
  return;
}

_install() {
  package="$1"

  if [[ $(_isInstalled "${package}") == 0 ]]; then
    echo "${package} is already installed."
  else
    yay -S --noconfirm "${package}"
  fi
}

_installMany() {
  toInstall=();

  for pkg; do
    if [[ $(_isInstalled "${pkg}") == 0 ]]; then
      echo "${pkg} is already installed."
      continue;
    fi
    toInstall+=("${pkg}");
  done

  if [[ "${toInstall[@]}" == "" ]]; then
    echo "All packages are already installed";
    return;
  fi
  printf "Packages not installed:\n%s\n" "${toInstall[@]}";
  yay -S --noconfirm "${toInstall[@]}"
}

packages=("direnv" "emacs" "exa" "ripgrep" "starship" "tmux" "vim" "neovim" "xclip" "zsh" "zsh-autosuggestions" "zsh-completions" "zsh-fast-syntax-highlighting" "go" "fish" "fisher" "sxhkd" "bspwm" "autojump" "thefuck" "wmname" "rbenv" "ruby-build" "lastpass-cli" "nerd-fonts-fira-code" "nerd-fonts-fira-mono" "nerd-fonts-hack")
if [[ "$XDG_CURRENT_DESKTOP" != '' ]]; then
  packages+=("ffmpeg" "libva" "libva-utils" "libva-intel-driver" "alacritty-ligatures" "adobe-source-code-pro-fonts" "papirus-icon-theme" "visual-studio-code-bin" "mpv" "faenza-icon-theme" "jetbrains-toolbox" "lastpass");
fi

_installMany "${packages[@]}"
