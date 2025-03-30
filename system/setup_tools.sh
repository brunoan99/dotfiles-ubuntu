. $DOT/utils/print_functions.sh

setup_tools() {
  info "Installing packages"
  declare -a packages=("curl" "wget" "git" "zsh"
  "autoconf" "automake" "binutils" "bison"
  "debugedit" "fakeroot" "file" "findutils" "flex" "gawk"
  "gcc" "gettext" "grep" "groff" "gzip" "libtool" "m4" "make"
  "patch" "pkgconf" "sed" "sudo" "texinfo" "which"
  "imagemagick" "ffmpeg" "less" "fzf" "net-tools" "zoxide" "neovim")
  for package in "${packages[@]}"; do
    info "Installing $package"
    # Check if the package is already installed on Ubuntu system
    if ! dpkg -s "$package" &> /dev/null; then
      # Install the package using apt
      sudo apt-get install -y "$package"
    else
      info "$package is already installed."
    fi
  done

}
