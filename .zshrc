# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export BASH_ENV=$HOME/non_interactive.sh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

export PATH=$PATH:/usr/local/go/bin

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export PATH=$PATH:/usr/local/opt/ansible@2.0/bin

dev() {
  case $1 in
    go )
      cd "$HOME/go/src/github.com"
      ;;
    * )
      cd "$HOME/dev/$1"
      ;;
  esac
}

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
#

# preexec () {
#   echo -ne "\ek${1%% *}\e\\"
# }

unalias rd
rd() {
  java -jar /Users/slofurno/dev/sources/rundeck-cli-1.0.13-all.jar "$@"
}

export RD_USER=slofurno
export RD_PASSWORD=sidecar13
export RD_URL=https://rundeck.sidecartechnologies.com/api/17

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#compinit
#source /Users/slofurno/dev/sources/aws-cli/bin/aws_zsh_completer.sh
#
source $HOME/functions.sh
source $HOME/non_interactive.sh

unset AWS_ACCESS_KEY_ID
unset AWS_SECRET_ACCESS_KEY
export AWS_DEFAULT_PROFILE=sidecar
export AWS_PROFILE=sidecar #apex doesn't respect default profile
export ANSIBLE_VAULT_PASSWORD_FILE=$HOME/dev/.ansible-secret

# added by travis gem
[ -f /Users/slofurno/.travis/travis.sh ] && source /Users/slofurno/.travis/travis.sh

#setopt SH_WORD_SPLIT
export PATH="$HOME/.yarn/bin:$PATH"

bindkey "^U" backward-kill-line

export LESS="$LESS -i"

