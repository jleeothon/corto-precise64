HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep
bindkey -v
zstyle :compinstall filename '/home/corto/.zshrc'
autoload -Uz compinit
compinit

export PS1='%~ %# '
