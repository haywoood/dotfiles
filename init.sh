#!/usr/bin/env bash

set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing dotfiles from $DOTFILES_DIR"

# Spacemacs
ln -sf "$DOTFILES_DIR/.spacemacs.d" "$HOME/.spacemacs.d"
export SPACEMACSDIR="$HOME/.spacemacs.d"

# tmux
ln -sf "$DOTFILES_DIR/.tmux.conf" "$HOME/.tmux.conf"

# Alacritty
mkdir -p "$HOME/.config/alacritty"
ln -sf "$DOTFILES_DIR/.config/alacritty/alacritty.toml" "$HOME/.config/alacritty/alacritty.toml"

# Git
ln -sf "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"

# Shell
ln -sf "$DOTFILES_DIR/.zprofile" "$HOME/.zprofile"
ln -sf "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"

# Claude Code
mkdir -p "$HOME/.claude"
ln -sf "$DOTFILES_DIR/.claude/CLAUDE.md" "$HOME/.claude/CLAUDE.md"

# clj-kondo
ln -sf "$DOTFILES_DIR/.clj-kondo" "$HOME/.clj-kondo"

# lsp
ln -sf "$DOTFILES_DIR/.lsp" "$HOME/.lsp"

echo "Done! You may need to:"
echo "  - Install Spacemacs: git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d"
echo "  - Install Alacritty: brew install --cask alacritty"
echo "  - Source your shell: source ~/.zshrc"
echo "  - Reload tmux: tmux source-file ~/.tmux.conf"
