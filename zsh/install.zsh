#!/bin/bash
# Setup to all my zsh plugins
. $DOT/utils/print_functions.sh

# zsh-autocomplete
if [ ! -d "$CONFIG/zsh/zsh-autosuggestions" ]
then
  git clone https://github.com/zsh-users/zsh-autosuggestions $CONFIG/zsh/zsh-autosuggestions
  success "zsh-autosuggestions installed"
else info "zsh-autosuggestions already installed"
fi

# zsh-syntax-highlighting
if [ ! -d "$CONFIG/zsh/zsh-syntax-highlighting" ]
then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting $CONFIG/zsh/zsh-syntax-highlighting
  success "zsh-syntax-highlighting installed"
else info "zsh-syntax-highlighting already installed"
fi
