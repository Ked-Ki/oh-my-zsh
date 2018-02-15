([[ $- != *i* ]] || [[ -o login ]]) && return
[[ -z "$TMUX" ]] && (tmux attach || tmux)
