ask_for_upgrade() {
  echo -n "Do you want to run system upgrade? [y/N]: "
  read answer
  case "$answer" in
    [Yy]* ) update
    ;;
    * ) echo "Skipping upgrade."
    ;;
  esac
}

