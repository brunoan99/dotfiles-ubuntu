#!/bin/zsh

check_wsl() {
  if [ -n "$WT_SESSION" ]; then
    return 0
  else
    return 1
  fi
}

ask_for_upgrade() {
  echo -n "Do you want to run system update? [y/N]: "
  read -k1 answer
  printf "\n"
  case "$answer" in
    [Yy]* ) update ;;
    * ) echo "Skipping update." ;;
  esac
}

verify_for_upgrade() {
  if check_wsl; then
    local last_upgrade_date=$(stat /var/cache/apt/pkgcache.bin | grep "Modify" | awk '{print $2}')
    local current_date=$(date +%Y-%m-%d)
    if [[ "$last_upgrade_date" != "$current_date" ]]; then ask_for_upgrade; fi
  fi
}
