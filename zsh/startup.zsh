#!/bin/zsh

ask_for_upgrade() {
  echo -n "Do you want to run system upgrade? [y/N]: "
  read -t 5 -k1 answer
  printf "\n"
  case "$answer" in
    [Yy]* ) update ;;
    * ) echo "Skipping upgrade." ;;
  esac
}

verify_for_upgrade() {
  local last_upgrade_date=$(ls -l --time-style=long-iso /var/cache/apt/pkgcache.bin | cut -d ' ' -f4)
  local current_date=$(date +%Y-%m-%d)

  if [[ "$last_upgrade_date" != "$current_date" ]]; then ask_for_upgrade; fi
}
