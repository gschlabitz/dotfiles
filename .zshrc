# Order and usage of zsh configs
#
# .zshenv   — runs for EVERY zsh (scripts too). Only universal must-haves.
# .zprofile — runs once per login shell. Environment: PATH, exports, brew shellenv.
# .zshrc    — runs per interactive shell. UX like aliases, prompt, completions, etc.
 
# Completions
autoload -Uz compinit
compinit

# Aliases

# git alias to work with my dotfiles setup (bare git repo etc.)
alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

# always scope project when authorizing GitHub CLI
alias ghlogin="gh auth login -s 'repo,read:org,project,workflow,gist'"

# I'm usally using ls -hal anyway.
alias ls='eza -hal'

# where are the fat files at?
alias more_than_400M='find . -type f -size +400M -exec ls -lah {} + | sort -k5 -hr'

# prompt configured by `starship`
eval "$(starship init zsh)"
