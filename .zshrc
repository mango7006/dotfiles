HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch
unsetopt autocd beep notify
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mango/.zshrc'

autoload -Uz compinit
compinit

# Exports
export EDITOR="nvim"
export VISUAL="nvim"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# Aliases
alias ls="eza --color=auto --icons"
alias l="eza -a --color=auto --icons"
alias cat="bat"
alias cd="z"

alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -iv"
alias la="eza -alh --color=auto --icons"
alias grep="rg -P -i --color=auto"
alias ip="ip -c=auto"
alias whatip="ip -c a | rg 'inet '"

alias neofetch="echo 'neofetch is too old you dumbo'; fastfetch"

alias vi="nvim"
alias neovim="nvim"
alias vim="nvim"

alias shutdown="shutdown now"
alias reboot="sudo reboot now"

