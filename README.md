# Dotfiles

Personal development environment configuration.

## What's Included

- **Spacemacs** - Vim-style Emacs with Clojure, JS, and web dev support
- **tmux** - Terminal multiplexer with Ctrl+Space prefix
- **Alacritty** - GPU-accelerated terminal with Tomorrow Night theme
- **Claude Code** - AI coding assistant configuration
- **clj-kondo / LSP** - Clojure linting and language server config

## Quick Start

```bash
git clone https://github.com/haywoood/dotfiles.git ~/dotfiles
cd ~/dotfiles
./init.sh
```

## Prerequisites

```bash
# Emacs
brew install emacs

# Spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# Terminal
brew install --cask alacritty

# tmux
brew install tmux

# Fonts
brew install --cask font-source-code-pro

# Clojure tooling
brew install clojure clj-kondo
```

## Key Bindings

### tmux (prefix: Ctrl+Space)

- `prefix |` - vertical split
- `prefix -` - horizontal split
- `prefix 0-9` - switch windows
- `prefix o` - cycle panes
- `prefix z` - zoom pane
- `prefix d` - detach

### Spacemacs

- `SPC` - leader key
- `/` - helm-swoop (search buffer)
- `J/K` in visual mode - move lines
- `, s c` - connect to CIDER REPL

## Dev Environment

The `dev` shell function launches a tmux session:

```bash
# Set your project directory
export DEV_PROJECT_DIR=~/dev/myproject

# Launch
dev
```

Layout:
```
Window 0: Claude Code + Spacemacs
Window 1: Build servers (customize in .zshrc)
```
