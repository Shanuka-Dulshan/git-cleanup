#!/usr/bin/env bash
# Installs git-cleanup into ~/.local/bin
set -e
REPO_RAW="https://raw.githubusercontent.com/Shanuka-Dulshan/git-cleanup/main"
mkdir -p "$HOME/.local/bin"
curl -fsSL "$REPO_RAW/git-cleanup" -o "$HOME/.local/bin/git-cleanup"
chmod +x "$HOME/.local/bin/git-cleanup"
case ":$PATH:" in
  *":$HOME/.local/bin:"*) ;;
  *) echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
     echo "Added ~/.local/bin to PATH. Run: source ~/.bashrc" ;;
esac
echo "Installed. Run: git-cleanup  (inside your repo)"
