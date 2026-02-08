# Path additions
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.bun/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Dev environment launcher
# Customize PROJECT_DIR and server commands for your setup
dev() {
  local PROJECT_DIR="${DEV_PROJECT_DIR:-$HOME/dev/project}"

  # Attach if session exists
  if tmux has-session -t dev 2>/dev/null; then
    tmux attach -t dev
    return
  fi

  # Create new session
  cd "$PROJECT_DIR"
  tmux new-session -d -s dev -n "editing"

  # Window 0: Spacemacs below
  tmux split-window -t dev:editing -v "emacs -nw"
  tmux select-pane -t dev:editing.0  # focus top pane for claude

  # Window 1: Servers (customize these commands)
  # tmux new-window -t dev -n "servers" "npm run dev"
  # tmux split-window -t dev:servers -h "npm run watch"

  # Back to editing window, attach
  tmux select-window -t dev:editing
  tmux attach -t dev
}

# Completions
autoload -Uz compinit
compinit

# List all local listening services
alias ports='lsof -iTCP -sTCP:LISTEN -P -n | tail -n +2 | awk "{printf \"%-15s %-8s %s\n\", \$1, \$2, \$9}" | sort -t: -k2 -n | uniq'

# fzf - Ctrl-R history, Ctrl-T files, Alt-C directories
source <(fzf --zsh)

# zoxide - smart cd (use 'z' instead of 'cd')
eval "$(zoxide init zsh)"

# direnv - auto-load .envrc per project
eval "$(direnv hook zsh)"
