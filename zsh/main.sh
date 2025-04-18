# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/h-hori/.zsh/completions:"* ]]; then export FPATH="/Users/h-hori/.zsh/completions:$FPATH"; fi
. "/Users/h-hori/.deno/env"
# Initialize zsh completions (added by deno install script)
autoload -Uz compinit
compinit

export LAST_PWD=""

function precmd {
  if [[ "$LAST_PWD" != "$PWD" ]]; then
    echo "\n${PWD/#$HOME/~}"
    export LAST_PWD="$PWD"
  fi
}

export PS1=$'%{\e[1m%}> %{\e[0m%}'

alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gs="git status"
alias gl="git log"
alias v="nvim"
alias cdg='cd "$(git rev-parse --show-toplevel)"'

function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    builtin cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}

export EDITOR="nvim"
export VISUAL="nvim"

