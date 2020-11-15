alias ls='ls --color'
export PS1='\u@\h:\[\e[33m\]\w\[\e[0m\]\$ '
export EDITOR='vim'

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi
