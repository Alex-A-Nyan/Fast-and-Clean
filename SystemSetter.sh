#!/usr/bin/bash

# Copyright 2023 valeryje
# Author: valeryje
# Contributors:
#   * mhorton

# shellcheck disable=SC1091
source ./lib/colours.sh
# shellcheck disable=SC1091
source ./lib/homebrew.sh
# shellcheck disable=SC1091
source ./lib/memcleaner.sh
# shellcheck disable=SC1091
source ./lib/meminfo.sh
# shellcheck disable=SC1091
source ./lib/menu.sh
# shellcheck disable=SC1091
source ./lib/parrot_live.sh
# shellcheck disable=SC1091
source ./lib/prints.sh

# ----- SCRIPT MENU ----- #
#clear
printf "Welcome to the System Setter\n"
printf "Here are the options to choose:\n"
show_menu

keep_going=1
while [ "$keep_going" -ne 0 ]
do
  print_42line_nl
  read -p "Option: " -r OPTION
  case "$OPTION" in
    0)
      show_menu
      ;;
    1)
      clear_space
      ;;
    2)
      show_memstats
      ;;
    3)
      install_homebrew
      ;;
    4)
      update_homebrew
      ;;
    5)
      show_parrot_show
      ;;
    *)
      print_good_bye
      keep_going=0
      ;;
  esac
done
