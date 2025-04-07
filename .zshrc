# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sora/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


path=('/home/sora/.local/bin' $path)

eval "$(oh-my-posh init zsh)"
eval "$(oh-my-posh init zsh --config ~/tokyo.omp.json)"

alias matrix="cmatrix -b -u 4 -C blue"
alias nvc="nvim ~/.dotfiles/dot_config/"
alias nvist="nvim ~/ist/"
alias optm="optimus-manager --switch"

export PATH=$PATH:/home/sora/.spicetify
