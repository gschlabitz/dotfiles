# dotfiles

Bare-git dotfiles repo, shared across operating systems.

[Setup guide](https://legacycoder.net/workarounds/bare-git-dotfiles/)

## Cheat sheet

All commands use the `dotfiles` alias (plain `git` won't find the repo):

```sh
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
```

### Track a new file

```sh
dotfiles add ~/.config/foo/config
dotfiles commit --message "Track foo config"
dotfiles push
```

### Everyday management

```sh
dotfiles status                 # only tracked files show (showUntrackedFiles no)
dotfiles diff                   # uncommitted changes
dotfiles add --update           # stage changes to already-tracked files
dotfiles commit --message "..."
dotfiles push / dotfiles pull
```

### Inspect

```sh
dotfiles ls-files               # list everything tracked
dotfiles log --oneline --max-count=10   # recent history
```

### Stop tracking a file

```sh
dotfiles rm --cached ~/.config/foo/config   # keeps the file on disk
dotfiles commit --message "Untrack foo config"
```

## Rules

- Never add secrets (use `*.local` includes).
- Audit configs before comitting. Repo is public.
