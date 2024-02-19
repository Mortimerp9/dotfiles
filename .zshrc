# Set up the prompt
source /etc/profile

#autoload -Uz promptinit
#promptinit
#prompt adam1

export PATH="$HOME/homebrew/bin:$HOME/homebrew/sbin:$PATH"
export PATH="/private/home/mortimer/bin:$PATH"
export PATH="/private/home/mortimer/.local/bin:/private/home/mortimer/.fzf/bin:$PATH"

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
if whence dircolors >/dev/null; then
  eval "$(dircolors -b)"
  zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
  alias ls='ls --color'
else
  export CLICOLOR=1
  zstyle ':completion:*:default' list-colors ''
fi
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias less='bat'
alias cat='bat'

alias sq='squeue -o "%.16i %.12P %80j %.8u %t %.10M %.6D %32R"'
alias squ='sq -u $USER | column -t'
alias sl='/private/home/par/bin/sl'

alias fix-my-git='unset SSH_AUTH_SOCK'
#nvim
alias vim='nvim'
alias vi='nvim'
export EDITOR='nvim'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/private/home/mortimer/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/private/home/mortimer/anaconda3/etc/profile.d/conda.sh" ]; then
		. "/private/home/mortimer/anaconda3/etc/profile.d/conda.sh"
	    else
        export PATH="/private/home/mortimer/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
#
#

eval "$(starship init zsh)"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH=/private/home/mortimer/.local/opt/nvim-linux64/bin:/private/home/mortimer/.local/bin:/private/home/mortimer/.fzf/bin:/private/home/mortimer/bin:/public/local/bin:/private/home/mortimer/.local/bin:/private/home/mortimer/.fzf/bin:/private/home/mortimer/bin:/public/local/bin:/private/home/mortimer/.local/bin:/private/home/mortimer/.fzf/bin:/private/home/mortimer/.local/bin:/private/home/mortimer/bin:/public/local/bin:/private/home/mortimer/anaconda3/bin:/private/home/mortimer/anaconda3/condabin:/private/home/mortimer/.nvm/versions/node/v18.8.0/bin:/private/home/mortimer/bin:/public/Modules_5.3.1/bin:/public/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/public/slurm/23.02.5/bin:/public/slurm/23.02.5/sbin:/public/slurm/23.02.5/bin:/public/slurm/23.02.5/sbin:/private/home/mortimer/.fzf/bin:/public/slurm/23.02.5/bin:/public/slurm/23.02.5/sbin:/public/slurm/23.02.5/bin:/public/slurm/23.02.5/sbin:/Users/mortimer/.local/nvim-macos/bin:$PATH
