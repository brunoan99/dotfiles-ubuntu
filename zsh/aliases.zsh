# terminal
alias reload='. ~/.zshrc'
alias c='clear'

# exa on ls
alias ls='exa --icons -laa'                                           		# ls
alias ll='ls -lbGF --no-filesize --no-user --no-time --git'                     # long list
alias la='ls -lba  --no-filesize --no-user --no-time --git --color-scale'       # all list
alias lt='exa --icons -lT --no-filesize --no-user --no-time --git --level=3'           # tree

# zoxide on cd
alias cd='z'
alias cdi="zi"

# so
#alias upgrade='sudo pacman -Syu --noconfirm && yay -Syu --noconfirm'
#alias updt='upgrade && auto_clean'

# docker
alias d='docker'
alias dc='docker compose'
alias dcr='docker compose down && docker compose up -d'
alias remove_containers='docker rm -f "$(docker ps -aq)"'
alias clean_containers='docker container prune'
alias clean_images='docker image prune'

# cargo
alias cargo-clippy='cargo clippy -- -A clippy::all -W clippy::correctness -W clippy::suspicious -W clippy::complexity -W clippy::perf -W clippy::style -W clippy::pedantic -W clippy::nursery -W clippy::cargo'
alias cw='cargo-watch --clear --'

# code
alias codi='code-insiders'
