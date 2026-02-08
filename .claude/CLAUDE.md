# Claude Code User Configuration

## Preferred Stack

When starting new projects, prefer this stack unless I specify otherwise:

- **Language:** Clojure / Babashka
- **Web:** Ring + Reitit (or bb's built-in http-server for lightweight stuff)
- **Database:** JSONL flat files for simple apps, Datalevin for anything with real queries
- **Templating:** Hiccup
- **Task runner:** bb.edn tasks
- **Process management:** Overmind + Procfile
- **Per-project env:** direnv (.envrc)

For scripting and automation, use Babashka — not Python, not shell scripts.

## Dev Environment

Terminal-first: Alacritty + tmux + Doom Emacs (`emacs -nw`)

### Startup

When asked to "start dev", "vibecode setup", or similar, first check if the tmux session already exists:

```bash
tmux list-windows -t dev 2>/dev/null
tmux list-panes -t dev:0 -F "#{pane_index}: #{pane_current_command}" 2>/dev/null
```

If the session is already running with the proper layout, acknowledge it and continue.

### Layout

**Window 0 (editing)**: Claude Code + Doom Emacs
```
┌─────────────────────────────────────┐
│           Claude Code               │
├─────────────────────────────────────┤
│        Doom Emacs (emacs -nw)       │
└─────────────────────────────────────┘
```

**Window 1 (servers)**: Build/watch processes
```
┌──────────────────┬──────────────────┐
│   build/watch    │  dev server      │
└──────────────────┴──────────────────┘
```

### Quick Reference

- **Window 0, Pane 0**: Claude Code (main)
- **Window 0, Pane 1**: Doom Emacs terminal (`emacs -nw`)
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
