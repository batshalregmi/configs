# show hidden files
compinit
_comp_options+=(globdots)



HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history


unsetopt cdablevars # autocomplete thing
bindkey '\t' end-of-line # moves to end of line when pressing tab, usefulf or autocomplete
bindkey '^H' backward-kill-word #ctrl + backspace support 



export ZSH_AUTOSUGGEST_STRATEGY=(
	history
	completion
)


source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/command-not-found/command-not-found.plugin.zsh

alias ls='lsd -a'


eval "$(starship init zsh)"

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
