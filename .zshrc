# Path setting
export PATH=$PATH:$HOME/go/bin
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# How often to auto-update (in days).
zstyle ':omz:update' frequency 30

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
         zsh-autosuggestions
         zsh-syntax-highlighting)

# Set environment variables
export EDITOR="nvim"
export VISUAL="nvim"

# Apply the aliases
source $HOME/.config/aliases

source $ZSH/oh-my-zsh.sh

source <(fzf --zsh)

