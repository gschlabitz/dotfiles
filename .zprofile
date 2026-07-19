# Order and usage of zsh configs
#
# .zshenv   — runs for EVERY zsh (scripts too). Only universal must-haves.
# .zprofile — runs once per login shell. Environment: PATH, exports, brew shellenv.
# .zshrc    — runs per interactive shell. UX like aliases, prompt, completions, etc.

# Go
#
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH="$GOBIN:$PATH"

# Homebrew
# 
# turn off "running cleanup" hints
export HOMEBREW_NO_ENV_HINTS=1

# generate and apply shell env vars and path additions
eval "$(/opt/homebrew/bin/brew shellenv)"

# PostgreSQL
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

# Python
export PATH="/opt/homebrew/opt/python@3.14/libexec/bin:$PATH"

# pipx installs stuff here
export PATH="$PATH:/Users/guidos/.local/bin"

# Set the shell reader and editor 
export VISUAL="nano"
export EDITOR="nano"
