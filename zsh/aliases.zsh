# terminal
alias reload='. ~/.zshrc'
alias c='clear'
alias e='exit'

# batcat
alias bat=batcat

# exa on ls
alias ls='eza --icons -l'
alias la='eza --icons -laa'                                           		# ls

# zoxide on cd
alias cd='z'
alias cdi="zi"

# so
alias apt_update='sudo apt update && sudo apt -y upgrade'
alias apt_clean='sudo apt autoremove -y'
alias snap_update='sudo snap refresh'
alias update='apt_update && apt_clean && snap_update'

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

# conf
alias conf="$EDITOR $DOT"
