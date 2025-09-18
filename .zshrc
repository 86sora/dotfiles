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


#--------------COLORS-------------
export FZF_DEFAULT_OPTS='--color=fg:#ebdbb2,hl:#bd93f9 --color=fg+:#d5c4a1,bg+:#32302f,hl+:#bd93f9 --color=info:#ffb86c,prompt:#98971a,pointer:#d79921 --color=marker:#ff79c6,spinner:#ffb86c,header:#458588'

#cd with eza config
zstyle ':completion:*:descriptions' format '[%d]' # set descriptions format to enable group support 
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} # set list-colors to enable filename colorizing
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath' # preview directory's content with eza when completing cd
####################################


export EDITOR=nvim

path=('/home/sora/.local/bin' $path)

eval "$(oh-my-posh init zsh)"
eval "$(oh-my-posh init zsh --config ~/.config/tokyo.omp.json)"

alias matrix="cmatrix -b -u 4 -C blue"
alias nvc="nvim ~/.dotfiles/dot_config/"
alias nvist="nvim ~/ist/"
alias opm="optimus-manager --switch"
alias eza="eza -x --icons"
alias ls="eza -x --icons"

export PATH=$PATH:/home/sora/.spicetify

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

#-----------PLUGINS-------------
zinit light-mode for \
    zsh-users/zsh-autosuggestions \
    zsh-users/zsh-completions \
	arzzen/calc.plugin.zsh \
    aloxaf/fzf-tab \
    zdharma-continuum/fast-syntax-highlighting	\
    raisty/alt-and-select
###############################
