# ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
# [ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
# [ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
# source "${ZINIT_HOME}/zinit.zsh"

# zinit light Aloxaf/fzf-tab
# zinit light zsh-users/zsh-autosuggestions
# zinit light zsh-users/zsh-completions
# zinit light zsh-users/zsh-syntax-highlighting

# autoload -U compinit && compinit

# export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
# eval "$(starship init zsh)"

# zinit snippet OMZP::command-not-found
# zinit snippet OMZP::git
# zinit snippet OMZP::sudo

# zinit cdreplay -q

# export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
# eval "$(starship init zsh)"

# bindkey -e
# bindkey '^p' history-search-backward
# bindkey '^n' history-search-forward

# HISTDUP=erase
# HISTFILE=~/.zsh_history
# HISTSIZE=5000
# SAVEHIST=$HISTSIZE

# setopt appendhistory
# setopt hist_find_no_dups
# setopt hist_ignore_all_dups
# setopt hist_ignore_dups
# setopt hist_ignore_space
# setopt hist_save_no_dups
# setopt sharehistory

# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
# zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
# zstyle ':completion:*' menu no
# zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
# zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

# alias c='clear'
# alias ls='ls --color'
# alias please='sudo '

# alias v='nvim'
# alias vi='nvim'
# alias vim='nvim'

# alias zj='zellij'

# eval "$(fzf --zsh)"
# eval "$(zoxide init --cmd cd zsh)"
# eval "$(/opt/homebrew/bin/brew shellenv)"
