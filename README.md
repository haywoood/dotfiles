# Dotfiles

Personal dev environment: Alacritty + tmux + Doom Emacs, Clojure/Babashka stack.

## Quick Start

```bash
# Install babashka first (everything else is automated)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install babashka

git clone https://github.com/haywoood/dotfiles.git ~/dotfiles
cd ~/dotfiles
bb setup
```

`bb setup` installs brew packages, symlinks configs, installs bbin tools, and sets up Doom Emacs.

Or run individual tasks:

| Task | What it does |
|---|---|
| `bb link` | Symlink dotfiles to home directory |
| `bb brew` | Install Homebrew packages |
| `bb tools` | Install bbin tools (clojure-mcp-light) |
| `bb doom` | Install or sync Doom Emacs |

## What's Included

- **Doom Emacs** — tty-optimized, evil mode, CIDER, LSP, smartparens
- **tmux** — `C-Space` prefix, popup tools, fzf session switching
- **Alacritty** — Tomorrow Night theme, Source Code Pro 14
- **Shell** — fzf, zoxide, direnv hooks
- **Claude Code** — preferred Clojure/Babashka stack config + clojure-mcp-light hooks

## tmux Keybindings

| Key | Action |
|---|---|
| `C-Space g` | lazygit popup |
| `C-Space t` | bb tasks picker |
| `C-Space p` | show listening ports |
| `C-Space s` | fzf session switcher |
| `C-Space \|` | vertical split |
| `C-Space -` | horizontal split |
