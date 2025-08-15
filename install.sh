#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$HOME/Essencium"
CONFIG_DIR="$HOME/.config"

link_cfg () {
  local name="$1"
  local target="$REPO_DIR/$name"
  local link="$CONFIG_DIR/$name"

  rm -rf "$link"
  ln -s "$target" "$link"
  echo "Linked $link -> $target"
}

link_cfg "hypr"
link_cfg "kitty"
link_cfg "waybar"

echo "Essencium configs linked."
