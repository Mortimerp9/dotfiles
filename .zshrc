# Set up the prompt
source /etc/profile

export ZDOTDIR="$HOME/.config/zsh/"

# load system specific configs
source "${ZDOTDIR:-${HOME}}/.zshrc-`uname`"

# load the rest of the config
source "$ZDOTDIR/zshrc" 

