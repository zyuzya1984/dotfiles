# env variables
export EDITOR="nvim"
export TERM="foot"
export TERMINAL="foot"
export BROWSER="firefox"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

alias cd="z" # cd with zoxide
alias nv="nvim" # editor

setopt append_history inc_append_history share_history 
setopt auto_menu menu_complete 
setopt auto_param_slash 
setopt no_case_glob no_case_match 
setopt globdots 
setopt extended_glob
setopt interactive_comments
unsetopt prompt_sp

HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE="$XDG_CACHE_HOME/zsh_history" 
HISTCONTROL=ignoreboth 

bindkey "^a" beginning-of-line
bindkey "^e" end-of-line
bindkey "^j" backward-word
bindkey "^k" forward-word
bindkey "^H" backward-kill-word
bindkey '^R' fzf-history-widget
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source <(fzf --zsh) # allow for fzf history widget
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

