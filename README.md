# Dotfiles

Personal dev environment: Alacritty + tmux + Doom Emacs, Clojure/Babashka stack.

## Quick Start

```bash
git clone https://github.com/haywoood/dotfiles.git ~/dotfiles
cd ~/dotfiles
./init.sh
```

## Prerequisites

```bash
brew install emacs tmux babashka clojure clj-kondo
brew install babashka/brew/bbin
brew install fzf lazygit zoxide direnv overmind
brew install --cask alacritty font-source-code-pro

# Doom Emacs
git clone https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install

# clojure-mcp-light (REPL eval + paren repair for AI coding assistants)
bbin install https://github.com/bhauman/clojure-mcp-light.git --tag v0.2.1 --as clj-nrepl-eval --main-opts '["-m" "clojure-mcp-light.nrepl-eval"]'
bbin install https://github.com/bhauman/clojure-mcp-light.git --tag v0.2.1 --as clj-paren-repair --main-opts '["-m" "clojure-mcp-light.paren-repair"]'
```

## What's Included

- **Doom Emacs** — tty-optimized, evil mode, CIDER, LSP, smartparens
- **tmux** — `C-Space` prefix, popup tools, fzf session switching
- **Alacritty** — Tomorrow Night theme, Source Code Pro 14
- **Shell** — fzf, zoxide, direnv hooks
- **Claude Code** — preferred Clojure/Babashka stack config

## tmux Keybindings

| Key | Action |
|---|---|
| `C-Space g` | lazygit popup |
| `C-Space t` | bb tasks picker |
| `C-Space p` | show listening ports |
| `C-Space s` | fzf session switcher |
| `C-Space \|` | vertical split |
| `C-Space -` | horizontal split |
