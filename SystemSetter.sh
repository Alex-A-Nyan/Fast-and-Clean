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

if [ "$OPTION" == 1 ]
  then
  

  rm -rf ~/Desktop/Presentation.pdf
  # rm -rf ~/Documents/*
  # rm -rf ~/Downloads/*
  rm -rf ~/Movies/*
  rm -rf ~/Music/*
  rm -rf ~/Pictures/*
  rm -rf ~/.Trash/*
  cp ~/Library/Icon? ~/.Trash
  ​
  #!/bin/bash
  rm -rfv ~/Library/Caches/*
  rm -rfv ~/Library/Application\ Support/Slack/Cache/*
  rm -rfv ~/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/*
  rm -rfv ~/Library/Group\ Containers/6N38VWS5BX.ru.keepcoder.Telegram/account-570841890615083515/postbox/*
  rm -rfv ~/Library/Caches
  rm -rfv ~/Library/Application\ Support/Code/Cache
  rm -rfv ~/Library/Application\ Support/Code/CachedData
  rm -rfv ~/Library/Application\ Support/Code/CachedExtension
  rm -rfv ~/Library/Application\ Support/Code/CachedExtensions
  rm -rfv ~/Library/Application\ Support/Code/CachedExtensionVSIXs
  rm -rfv ~/Library/Application\ Support/Code/Code\ Cache
  rm -rfv ~/Library/Application\ Support/Slack/Cache
  rm -rfv ~/Library/Application\ Support/Slack/Code\ Cache
  rm -rfv ~/Library/Application\ Support/Slack/Service\ Worker/CacheStorage
  rm -rfv ~/Library/Application\ Support/Code/User/workspaceStorage
  echo -en "\033[31mSpace for the space!\n\033[0m"
  free_space=$(df -h | grep 'lallison' | awk '{print $4}')
  echo -en "\033[32m${free_space} are available now\n\033[0m"
  free_space=$(df -h | grep 'agidget' | awk '{print $4}')
  echo -en "\033[32m${free_space} are available now\n\033[0m"
  df -h ~
  ​
  echo '----------------------'
  echo '\033[37;1;41mSize    Used    Avail\033[0m'
  echo '----------------------'
  df -h | grep Users | awk '{print $2 " = " $3 " + "  $4}'
  #df -h | awk 'NR == 8{print $2 " = " $3 " + "  $4}'
  rm -rf ~/Library/Application\ Support/Slack/Code\ Cache/* -y
  rm -rf ~/Library/Application\ Support/Slack/Cache/* -y
  rm -rf ~/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/* -y
  rm -rf ~/Library/Application\ Support/Google/Chrome/Default/Service\ Worker/CacheStorage/*
  rm -rf ~/Library/Application\ Support/Google/Chrome/Crashpad/completed/*
  rm -rf ~/Library/Caches/* -y
  rm -rf ~/.Trash/* -y
  rm -rf ~/Library/Safari/* -y
  rm -rf ~/.kube/cache/* -y
  rm -rf ~/Library/Application\ Support/Code/CachedData/* -y
  rm -rf ~/Library/Application\ Support/Code/Crashpad/completed/* -y
  rm -rf ~/Library/Application\ Support/Code/User/workspaceStoratge/* -y
  rm -rf ~/Library/Containers/com.docker.docker/Data/vms/* -y
  rm -rf ~/Library/Containers/com.apple.Safari/Data/Library/Caches/* -y
  rm -rf ~/Library/Containers/org.telegram.desktop/Data/Library/Application\ Support/Telegram\ Desktop/tdata/emoji/* -y
  df -h | grep Users | awk '{print $2 " = " $3 " + "  $4}'
  #df -h | awk 'NR == 8{print $2 " = " $3 " + "  $4}'
  echo '----------------------'
  
  echo "${blue}Current space:\n${reset}${initial_df}${reset}"
  echo "${blue}\nHome folder:${reset}"
  du -hd1 . 2>/dev/null | sort -h | grep --color=always "[0-9]*\.*[0-9]*M\t\|[0-9]*\.*[0-9]*G\t\|$"
  echo ""
  ​
  echo '----------------------'
  echo 'Size    Used    Avail'
  echo '----------------------'
  
  clear
  echo $RED"----- CLEARING THE SPACE -----"$RESET
  sleep 1
  echo $RED"before:\n"$RESET${before}$RESET
  df -h | grep Users | awk '{print $2 " = " $3 " + "  $4}'
  sleep 1
  echo DONE
fi

# from slack_general

# #!/bin/bash
# find ~/ -name ".DS_Store" -print -delete 2> /dev/null
# find ~/ -name "**.42_cache_bak**" -print -delete 2> /dev/null
# rm -rf ~/.zcompdump*
# rm -rf .Trash/*
# rm -rf ~/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/
# rm -rf ~/Library/Caches/*
# rm -rf ~/Library/42_cache
# rm -rf ~/Library/Application\ Support/Slack/Code\ Cache/
# rm -rf ~/Library/Application\ Support/Slack/Cache/
# rm -rf ~/Library/Caches/*
# rm -rf ~/Library/42_cache
# rm -rf ~/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/
# rm -rf ~/Library/Application\ Support/Slack/Cache/
# rm -rf ~/Library/Application\ Support/Slack/Code\ Cache/
# rm -rf ~/Library/Application\ Support/Slack/Cache/
# rm -rf ~/Library/Developer/CoreSimulator/Caches/
# rm -rf ~/Library/Developer/CoreSimulator/Devices/
# rm -rf ~/Library/Logs/
# rm -rf ~/Library/Google/GoogleSoftwareUpdate/
# rm -rf ~/Library/Containers/com.apple.Safari/Data/Library/Caches/
# rm -rf ~/Library/Application\ Support/Code/CachedData/
# rm -rf ~/Library/Application\ Support/Slack/logs
# rm -rf ~/Library/Application\ Support/zoom.us/AutoUpdater
# rm -rf ~/Library/Application\ Support/Google/Chrome/BrowserMetrics/.
# rm -rf ~/Library/Application\ Support/Google/Chrome/BrowserMetrics-spare.pma
# rm -rf ~/Library/Application\ Support/Google/Chrome/GrShaderCache/GPUCache/
# rm -rf ~/Library/Application\ Support/Google/Chrome/Default/Local\ Extension Settings/cjpalhdlnbpafiamejdnhcphjbkeiagm/lost
# rm -rf ~/Library/Application\ Support/Code/Cache/
# rm -rf ~/Library/Application\ Support/Code/CachedExtensionVSIXs/
# rm -rf ~/Library/Application\ Support/Code/Code\ Cache/
# rm -rf ~/Library/Application\ Support/Google/Chrome/Default/Service\ Worker/CacheStorage/
# rm -rf  ~/Library/Application\ Support/Google/Chrome/Default/Service\ Worker/ScriptCache/
# rm -rf ~/Library/Application\ Support/Google/Chrome/ShaderCache/GPUCache/
# rm -rf ~/Library/Application\ Support/Code/CachedExtensions/
# rm -rf ~/Library/Application\ Support/Code/logs/
# rm -rf ~/Library/Application\ Support/Code/Service\ Worker/CacheStorage/
# rm -rf ~/Library/Application\ Support/Code/Service\ Worker/ScriptCache/
# rm -rf ~/Library/Application\ Support/Code/User/workspaceStorage/
# rm -rf ~/.Trash/
# #brew cleanup && echo "clean complete"
# echo "clean complete"