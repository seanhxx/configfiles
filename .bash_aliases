# Add local bin
export LOCAL_HOME=~/.local
export LOCAL_BIN=$LOCAL_HOME/bin

if [[ -d $LOCAL_BIN && ! $PATH =~ $LOCAL_BIN ]]; then
    export PATH=$LOCAL_BIN:$PATH
fi

alias tns="tmux -2 new-session -s base"
alias tks="tmux kill-session -t base"
alias tas="tmux attach -t base"