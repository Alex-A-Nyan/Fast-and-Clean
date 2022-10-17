#!/bin/bash/
set -e
#====================================================================================================
# Technical - Colour Setting
#====================================================================================================
RED=$'\033[1;31m'       #  ${RED}      # красный цвет знаков
GREEN=$'\033[0;32m'     #  ${GREEN}    # зелёный цвет знаков
YELLOW=$'\033[0;33m'     #  ${YELLOW}    # желтый цвет знаков
BLUE=$'\033[0;34m'       #  ${BLUE}      # синий цвет знаков
MAGENTA=$'\033[0;35m'     #  ${MAGENTA}    # фиолетовый цвет знаков
CYAN=$'\033[0;36m'       #  ${CYAN}      # цвет морской волны знаков
GRAY=$'\033[0;37m'
blue=$'\033[0;34m'
cyan=$'\033[1;96m'
RESET=$'\033[0;39m'
#====================================================================================================
# Script - Greetings and Start Stats
#====================================================================================================
clear
echo Copyright 2022 valeryje / Valery Jennette / alale5 / Alexander Alexanyan
echo
echo Thank you "for" choosing my script to sweep your waste away ${RED}=^_^=${RESET}
echo 
echo "${cyan}Space before sweeping:"
echo '--------------------------------'
echo 'Size    Used    Avail  |  Volume'
echo '--------------------------------'
df -h | grep Users | awk '{print $2 " = " $3 " + "  $4 "  |   " 100-$5"%"}' > before.txt
cat before.txt

rm -rf ~/Desktop/Presentation*
rm -rf ~/Documents/*
rm -rf ~/Downloads/*
rm -rf ~/Movies/*
rm -rf ~/Music/*
rm -rf ~/Pictures/*
rm -rf ~/.Trash/*
cp ~/Library/Icon? ~/.Trash
df -h | grep Users | awk '{print $2 " = " $3 " + "  $4 "  |   " 100-$5"%"}' > after.txt
cat after.txt
rm -rf before.txt after.txt
echo '----------------------'
echo "Clean Success"
eval $(~/Utils_and_apps/homebrew/bin/brew shellenv)


echo ${RESET}