# Set environment variables
export EDITOR="nvim"
export VISUAL="nvim"

# Aliases
alias please="sudo "
alias v=nvim
alias i3cfg="v $HOME/.config/i3/config"
alias bashrc="v $HOME/.bashrc"
alias config="/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME"
alias t=tmux
alias ta="tmux a"

# i3 stuff
alias i3w1="i3-msg \"workspace 1; append_layout $HOME/.config/i3/workspace-coding.json\" && exit"
