export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

fpath=($DOT/functions $fpath)

autoload -U $DOT/functions/*(:t)
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt PROMPT_SUBST
setopt IGNORE_EOF

###########
# HISTORY #
###########

HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt INC_APPEND_HISTORY # imediately append to histoty file
setopt SHARE_HISTORY  # share it across sessions
setopt EXTENDED_HISTORY # record timestamp in history
setopt HIST_EXPIRE_DUPS_FIRST # expire duplicate entires first when trimming history
setopt HIST_IGNORE_DUPS # don't record and entry that was just recorded again
setopt HIST_IGNORE_ALL_DUPS # delete old recorded entry if new entry is a duplicate
setopt HIST_REDUCE_BLANKS # remove blanks from entries
setopt HIST_FIND_NO_DUPS # don't display a line previously found
setopt HIST_IGNORE_SPACE # remove entries when first char is a space
setopt HIST_SAVE_NO_DUPS # don't write duplicate entries in the history file
unsetopt HIST_VERIFY # execute commands using history (e.g.: using !$) immediately

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

bindkey "^[[3~"   delete-char
bindkey "^[[H"    beginning-of-line
bindkey "^[[F"    end-of-line
# ctrl+arrows
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
bindkey "\eOc"    forward-word
bindkey "\eOd"    backward-word
bindkey "\e[3;5~" kill-word # ctrl+delete
bindkey "\e[3^"   kill-word # urxvt
bindkey '^H'      backward-kill-word # ctrl+backspace
bindkey "\e[3;6~" kill-line # ctrl+shift+delete
bindkey "\e[3@"   kill-line # urxvt

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# completion to not be case sensitive
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
