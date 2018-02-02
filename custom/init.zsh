([[ $- != *i* ]] || [[ -o login ]]) && return
[[ -z "$TMUX" ]] && exec tmux
