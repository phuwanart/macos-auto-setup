#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

DOT_FOLDERS="nvim,ghostty,zsh,vim,ruby,rails,starship,wezterm,tmux,kitty,zed"

echo "[+] Dotfiles :: $SCRIPT_DIR"

for folder in $(echo $DOT_FOLDERS | sed "s/,/ /g"); do
  echo "[+] Folder :: $folder"
  stow -t $HOME -D $folder \
    --ignore=README.md --ignore=LICENSE --ignore=.DS_Store
  stow -v -t $HOME $folder \
    --ignore=README.md --ignore=LICENSE --ignore=.DS_Store
done

# Reload shell once installed
echo "[+] Reloading shell..."
exec $SHELL -l
