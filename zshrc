HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/wesrog/.zshrc'

autoload -Uz compinit
compinit

autoload -U promptinit && promptinit
prompt pure

alias dc='docker-compose'
alias dcr='docker-compose run --rm'
alias dcu='docker-compose up -d --no-recreate'

export PATH="$HOME/.pyenv/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

export TERM=xterm-256color
export EDITOR=/usr/bin/vim

export GRUNT_UID=$UID; export GRUNT_GID=$GID
export APP_ENV=dev
