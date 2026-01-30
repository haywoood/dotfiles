# Claude Code User Configuration

## Dev Environment Startup

When asked to "start dev", "vibecode setup", or similar, first check if the tmux session already exists:

```bash
tmux list-windows -t dev 2>/dev/null
tmux list-panes -t dev:0 -F "#{pane_index}: #{pane_current_command}" 2>/dev/null
```

If the session is already running with the proper layout, acknowledge it and continue.

## Preferred Layout

**Window 0 (editing)**: Claude Code + Spacemacs
```
┌─────────────────────────────────────┐
│           Claude Code               │
├─────────────────────────────────────┤
│        Spacemacs (emacs -nw)        │
└─────────────────────────────────────┘
```

**Window 1 (servers)**: Build/watch processes
```
┌──────────────────┬──────────────────┐
│   build/watch    │  dev server      │
└──────────────────┴──────────────────┘
```

## Startup Commands

```bash
tmux new-session -d -s dev -n "editing"
tmux split-window -t dev:editing -v "emacs -nw"
tmux select-pane -t dev:editing.0
# Add project-specific server commands to window 1
tmux select-window -t dev:editing
tmux attach -t dev
```

## Quick Reference

- **Window 0, Pane 0**: Claude Code (main)
- **Window 0, Pane 1**: Spacemacs terminal (`emacs -nw`)
- **Window 1**: Project servers

To send commands: `tmux send-keys -t dev:{window}.{pane} "command" Enter`

## Parallel Development

For parallel features, use git worktrees:

```bash
git worktree add ../project-feature-name feature-branch
tmux new-window -t dev -n "feature"
# cd ../project-feature-name && claude
```

For lighter parallel work, use subagents - Sonnet/Haiku for simple tasks, Opus for complex reasoning.
