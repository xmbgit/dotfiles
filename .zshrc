#!/usr/bin/env zsh

unset LC_ALL

set -a
LANG=C.UTF-8
LC_COLLATE=C
LC_NUMERIC=C
LC_TIME=C
LC_MONETARY=C
LC_CTYPE=C
LC_MESSAGES=C
set -a

case $- in
  *i*) ;;
    *) return;;
esac

if [ -f $HOME/.zprofile ]; then
    . $HOME/.zprofile
fi

if [ -f $HOME/.local/bin/env ]; then
    . $HOME/.local/bin/env
    eval "$(uv generate-shell-completion bash)"
fi

if [ -x /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

