# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# Aliases
alias e="nvim"
alias mci='mvn clean install'
alias gg='/usr/local/bin/gg'
alias web="cd $HOME/workspace/web/web-client"
alias ws="cd $HOME/workspace"
alias au='/usr/bin/au'
alias devserver='ssh johan@192.168.3.252'
alias vi=nvim
alias vf='nvim $(fzf)'
alias sc=systemctl
alias dfm='yadm'
alias nano='nvim'
alias local-web-api='export CM_API_URL=http://localhost:8080'
alias staging-web-api='export CM_API_URL=http://52.174.55.14:8080'
alias qa-web-api='export CM_API_URL=http://13.81.215.174:8080'
alias devserver-web-api='export CM_API_URL=http://192.168.3.252'
alias v=nvim
alias open=xdg-open
alias ls='exa --color=always --group-directories-first'
alias lso='/bin/ls'
alias b='buku --suggest'

# Exports
export WORKSPACE=$HOME/workspace
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export GRADLE_HOME=$HOME/Applications/gradle-6.7.1
export GRADLE_OPTS=-Dorg.gradle.daemon=true
export CM_API_URL=http://192.168.3.252:8080/
export INSTALL4J_HOME=$HOME/applications/install4j8
export WINDOWS_INSTALL4J_HOME=$HOME/applications/install4j8
export CIBECS_ENV_SCRIPT=./johan-env.sh
export CM_API_DOCS_DIR=$HOME/docs
export WINEARCH="win32"
export HAZELCAST_SERVICE_NAME=cibecs
export BUILD_BUILDNUMBER=1
export RUST_SRC_PATH=${HOME}/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src
export DYLD_LIBRARY_PATH=${HOME}/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib

export FZF_DEFAULT_COMMAND='rg --files --follow -g "!{.git,node_modules,build,dist,.m2,target}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# PATH
export PATH=$HOME/.local/bin::$JAVA_HOME/bin:$PATH:$HOME/bin:/usr/sbin:/sbin:$GRADLE_HOME/bin:$HOME/Dropbox/bin:$WORKSPACE/scripts:$HOME/.cargo/bin


export CM_API_URL=http://localhost:8080
