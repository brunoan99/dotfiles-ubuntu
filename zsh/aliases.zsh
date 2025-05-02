# terminal
alias reload='. ~/.zshrc'
alias c='clear'

# exa on ls
alias ls='exa --icons -l'
alias la='exa --icons -laa'                                           		# ls

# zoxide on cd
alias cd='z'
alias cdi="zi"

# so
alias update='sudo apt update && sudo apt upgrade'

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
