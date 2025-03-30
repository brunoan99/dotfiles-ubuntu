# add to path without duplications
function add_to_path {
    PATH=:$PATH
    PATH=$1${PATH//:$1:/:}
}

# if a file local-path.zsh exists it will be imported to environment
# than any path that doesn will be garanted repeated to next bootstrap
# doesn have to be in path.zsh.
# Only path of something that is installed in bootstrap process.
if [[ -a ~/.local-path.zsh ]]
then
  source ~/.local-path.zsh
fi

export GPG_TTY=$(tty)
# mise
#eval "$(/home/snape/.local/bin/mise activate zsh)"

# zoxide
eval "$(zoxide init zsh)"

add_to_path "/usr/bin/vendor_perl"
add_to_path "opt/fakeroot/bin"
