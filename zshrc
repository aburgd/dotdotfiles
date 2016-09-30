# Path to your oh-my-zsh installation.
  export ZSH=/home/vagrant/.oh-my-zsh

ZSH_THEME="half-life"

HIST_STAMPS="dd.mm.yyyy"

plugins=(git ruby rails golang)

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Add hub alias for github
eval "$(hub alias -s)"

# GOPATH for golang
export GOPATH=$HOME/work
# Add GOPATH to PATH for bin
export PATH=$PATH:$GOPATH/bin

# Add pyenv
export PATH="/home/vagrant/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Set TERM colors
TERM=xterm-256color

unsetopt PROMPT_SP

# Alias for checking aws ec2 instance status
alias stat-aws='aws ec2 describe-instances'

# Adding Go binary to PATH
export PATH=$PATH:/usr/local/go/bin

[[ -s "/home/vagrant/.gvm/scripts/gvm" ]] && source "/home/vagrant/.gvm/scripts/gvm"
