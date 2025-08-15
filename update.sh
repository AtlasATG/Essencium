#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$HOME/Essencium"
cd "$REPO_DIR"

git pull --rebase --autostash || git pull --rebase
"$REPO_DIR/install.sh"

echo "Essencium updated."
