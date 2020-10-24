# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH=/home/johan/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
#ZSH_THEME="mikeh"
#ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="gnzh"
ZSH_THEME="ys"

#POWERLEVEL9K_MODE="nerdfont-complete"
#POWERLEVEL9K_MODE='awesome-fontconfig'

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
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

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
#plugins=(git docker docker-compose mvn)

plugins=(tig colorize gitfast cp sudo mvn docker docker-compose fast-syntax-highlighting history-substring-search z npm)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# PROXY
#http_proxy="http://localhost:9050"

# Bronze

# BRONZE=(status:black:white dir:blue:white git:green:black cmdtime:magenta:white)
# export BRONZE_SHELL=zsh


# Aliases
alias mci='mvn clean install'
alias gg='/usr/local/bin/gg'
alias web="cd $HOME/workspace/web/web-client"
alias ws="cd $HOME/workspace"
alias au='/usr/bin/au'
alias devserver='ssh johan@192.168.3.252'
alias vi=nvim
alias sc=systemctl
alias dfm='yadm'
alias nano='nvim'
alias local-web-api='export CM_API_URL=http://localhost:8080'
alias staging-web-api='export CM_API_URL=http://52.174.55.14:8080'
alias qa-web-api='export CM_API_URL=http://13.81.215.174:8080'
alias devserver-web-api='export CM_API_URL=http://192.168.3.252'
alias v=nvim
alias open=xdg-open

# Exports
export WORKSPACE=$HOME/workspace
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
#export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
export GRADLE_HOME=$HOME/apps/gradle/2.7
export GRAILS_HOME=$HOME/apps/grails-1.3.7
export GRADLE_OPTS=-Dorg.gradle.daemon=true
export GRADLE_HOME=$HOME/apps/gradle-4.10
export CM_API_URL=http://192.168.3.252:8080/

export INSTALL4J_HOME=$HOME/applications/install4j8
export WINDOWS_INSTALL4J_HOME=$HOME/applications/install4j8
export CIBECS_ENV_SCRIPT=./johan-env.sh
export CM_API_DOCS_DIR=$HOME/docs
export WINEARCH="win32"
export HAZELCAST_SERVICE_NAME=cibecs

# RUST
export RUST_SRC_PATH=${HOME}/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src
export DYLD_LIBRARY_PATH=${HOME}/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib

# PATH
export PATH=$HOME/.local/bin:/home/linuxbrew/.linuxbrew/bin:$JAVA_HOME/bin:$PATH:$HOME/bin:/usr/sbin:/sbin:$GRADLE_HOME/bin:$HOME/Dropbox/bin:$GRAILS_HOME/bin:$WORKSPACE/scripts
#export PATH=$PATH:/opt/cabal/bin:/opt/ghc/bin
export PATH=$PATH:$HOME/.local/bin:$HOME/.cargo/bin

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/johan/.sdkman"
[[ -s "/home/johan/.sdkman/bin/sdkman-init.sh" ]] && source "/home/johan/.sdkman/bin/sdkman-init.sh"

# VIM : Map Caps lock to esc
setxkbmap -option caps:escape

## Linux Brew
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

## Oh my zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## Spacemacs

# git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
   source ~/.config/exercism/exercism_completion.zsh
fi

#eval "$(bronze init)"
#function powerline_precmd() {
#    PS1="$(powerline-go -error $? -shell zsh)"
#}

#function install_powerline_precmd() {
#  for s in "${precmd_functions[@]}"; do
#    if [ "$s" = "powerline_precmd" ]; then
#      return
#    fi
#  done
#  precmd_functions+=(powerline_precmd)
#}

#if [ "$TERM" != "linux" ]; then
#    install_powerline_precmd
#fi

BUILD_BUILDNUMBER=1

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#RUSTFLAGS="-C linker=x86_64-unknown-linux-gnu"


### POWERLINE
#POWERLEVEL9K_DISABLE_RPROMPT=true
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="▶ "
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""

#POWERLEVEL9K_FOLDER_ICON=""
#POWERLEVEL9K_HOME_SUB_ICON="$(print_icon "HOME_ICON")"
#POWERLEVEL9K_DIR_PATH_SEPARATOR=" $(print_icon "LEFT_SUBSEGMENT_SEPARATOR") "

#POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0

#POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true

#POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='black'
#POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='178'
#POWERLEVEL9K_NVM_BACKGROUND="238"
#POWERLEVEL9K_NVM_FOREGROUND="green"
#POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="blue"
#POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="015"

#POWERLEVEL9K_TIME_BACKGROUND='255'
#POWERLEVEL9K_COMMAND_TIME_FOREGROUND='gray'
#POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='245'
#POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'

#POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator context dir dir_writable vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs command_execution_time time)
#POWERLEVEL9K_SHOW_CHANGESET=true

#HYPHEN_INSENSITIVE="true"
#COMPLETION_WAITING_DOTS="true"

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
# ZSH_HIGHLIGHT_STYLES[cursor]='bold'

# ZSH_HIGHLIGHT_STYLES[alias]='fg=green,bold'
# ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=green,bold'
# ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
# ZSH_HIGHLIGHT_STYLES[function]='fg=green,bold'
# ZSH_HIGHLIGHT_STYLES[command]='fg=green,bold'
# ZSH_HIGHLIGHT_STYLES[precommand]='fg=green,bold'
# ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=green,bold'


rule () {
	print -Pn '%F{blue}'
	local columns=$(tput cols)
	for ((i=1; i<=columns; i++)); do
	   printf "\u2588"
	done
	print -P '%f'
}


[ -f "/home/johan/.ghcup/env" ] && source "/home/johan/.ghcup/env" # ghcup-env
