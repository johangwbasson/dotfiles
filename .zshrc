# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi


### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting

# Plugin history-search-multi-word loaded with investigating.
zinit load zdharma/history-search-multi-word

# Docker Compose
zinit ice from"gh-r" as"program" mv"docker* -> docker-compose"
zinit light docker/compose

# Vim
zinit ice as"program" atclone"rm -f src/auto/config.cache; ./configure" \
    atpull"%atclone" make pick"src/vim"
zinit light vim/vim

# Dir Env
#zinit ice as"program" make'!' atclone'./direnv hook zsh > zhook.zsh' \
#    atpull'%atclone' src"zhook.zsh"
#zinit light direnv/direnv

#zinit ice from"gh-r" as"program" mv"direnv* -> direnv"
#zinit light direnv/direnv

# Load the pure theme, with zsh-async library that's bundled with it.
#zinit ice pick"async.zsh" src"pure.zsh"
#zinit light sindresorhus/pure

# Load fzf
#zinit ice from"gh-r" as"program"
#zinit load junegunn/fzf-bin

# Load Powerlevel
#zinit ice depth=1; zinit light romkatv/powerlevel10k

# Enable auto cd
setopt auto_cd

# Enable z (https://github.com/rupa/z)
. $HOME/bin/z.sh

# Load powerlevel config
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
 
# NVIM                                                                                                                  
export NVM_DIR="$HOME/.nvm"                                                                                             
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm                                                      
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Pure prompt
fpath+=$HOME/.zsh/pure

autoload -U promptinit; promptinit
prompt pure
