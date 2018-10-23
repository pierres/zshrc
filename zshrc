setopt appendhistory
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=10000

bindkey '^[[3~' delete-char
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

zstyle ':completion:*' menu select

autoload -Uz compinit
compinit

source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir vcs)
POWERLEVEL9K_STATUS_OK=false
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time)
POWERLEVEL9K_HIDE_BRANCH_ICON=true
POWERLEVEL9K_VCS_HIDE_TAGS=true
POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked git-aheadbehind git-remotebranch)

source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme

alias la='command ls -la --color=auto'
alias ll='command ls -l --color=auto'
alias lh='command ls -hAl --color=auto'
alias l='command ls -l --color=auto'
