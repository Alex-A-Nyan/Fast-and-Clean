#!/bin/bash/

# ----- VARIABLES ----- #
  RED=$'\033[0;31m'
  GREEN=$'\033[0;32m'
  YELLOW=$'\033[0;33m'
  BLUE=$'\033[0;34m'
  MAGENTA=$'\033[0;35m'
  RESET=$'\033[0;m'

# ----- SCRIPT MENU ----- #
  clear && sleep 0.1
  echo '         What do you want to do?'
  echo '           Choose your option:'
  echo ------------------------------------------
  echo 0 - 🔒 Settings
  echo 1 - 🧹 Clear the memory               #red
  echo 2 - 🪐 Memory space information     #green
  echo 3 - 🍺 Install Homebrew              #blue
  echo 4 -  Update Homebrew Directory    #magenta
  echo 5 - 🦜 Shake your booty            #yellow
  echo q - ❌ Quit
  echo ------------------------------------------
  read OPTION
  while [ "$OPTION" != 0 ] && [ "$OPTION" != 1 ] && [ "$OPTION" != 2 ] && [ "$OPTION" != 3 ] && [ "$OPTION" != 4 ] && [ "$OPTION" != 5 ] && [ "$OPTION" != q ]
    do
      sleep 0.2
      echo 'Please, follow to the available options'
      echo ------------------------------------------
      read OPTION
    done
  sleep 0.2
  if [ "$OPTION" != q ]
    then
    echo "Let's get down to business then"
    echo ------------------------------------------
    sleep 1.5 && clear
    else
    echo "See 'ya =^_^="
    echo ------------------------------------------
  fi

# ----- CLEARING SCRIPT ----- #
  if [ "$OPTION" == 1 ]
    then
    echo $RED"----- CLEARING THE SPACE -----"$RESET
    sleep 1
    # Avoid boring prefix in du/df/etc
    cd $HOME
    initial_used_space=$(df -h $HOME | grep -v 'Filesystem' | awk '{ printf("%f", $3) }')
    # Show current used space
    initial_df=$(df -h . | grep --color=always -E "Size|Used|Avail|Capacity|[0-9]*\.*[0-9]*Mi|[0-9]*\.*[0-9]*Gi|[0-9]+\.*[0-9]+% |$")
    echo $RED"Current space:\n"$RESET${initial_df}$RESET
    echo $RED"\nHome folder:"$RESET

    echo ""
    echo '----------------------'
    echo 'Size    Used    Avail'
    echo '----------------------'
    df -h | grep Users | awk '{print $2 " = " $3 " + "  $4}'
    rm -rf ~/Library/Application\ Support/Slack/Code\ Cache/
    rm -rf ~/Library/Application\ Support/Slack/Cache/
    rm -rf ~/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/
    #rm -rf ~/Library/ApplicationSupport/CrashReporter/*
    #rm -rf ~/Library/Application\ Support/Code/*
    #rm -rf ~/Library/Group\ Containers/*
    rm -rf ~/Library/42_cache/
    rm -rf ~/Library/Caches/CloudKit
    rm -rf ~/Library/Caches/com.apple.akd
    rm -rf ~/Library/Caches/com.apple.ap.adprivacyd
    rm -rf ~/Library/Caches/com.apple.appstore
    rm -rf ~/Library/Caches/com.apple.appstoreagent
    rm -rf ~/Library/Caches/com.apple.cache_delete
    rm -rf ~/Library/Caches/com.apple.commerce
    rm -rf ~/Library/Caches/com.apple.iCloudHelper
    rm -rf ~/Library/Caches/com.apple.imfoundation.IMRemoteURLConnectionAgent
    rm -rf ~/Library/Caches/com.apple.keyboardservicesd
    rm -rf ~/Library/Caches/com.apple.nbagent
    rm -rf ~/Library/Caches/com.apple.nsservicescache.plist
    rm -rf ~/Library/Caches/com.apple.nsurlsessiond
    rm -rf ~/Library/Caches/storeassetd
    rm -rf ~/Library/Caches/com.microsoft.VSCode.ShipIt
    rm -rf ~/Library/Caches/com.microsoft.VSCode
    rm -rf ~/Library/Caches/com.google.SoftwareUpdate
    rm -rf ~/Library/Caches/com.google.Keystone
    rm -rf ~/Library/Caches/com.apple.touristd
    rm -rf ~/Library/Caches/com.apple.tiswitcher.cache
    rm -rf ~/Library/Caches/com.apple.preferencepanes.usercache
    rm -rf ~/Library/Caches/com.apple.preferencepanes.searchindexcache
    rm -rf ~/Library/Caches/com.apple.parsecd
    rm -rf ~/Library/Caches/
    rm -rf ~/Library/Caches/
    rm -rf ~/Library/Caches/
    rm -rf ~/Library/Caches/
    rm -rf ~/Library/Caches/
    rm -rf ~/Library/Caches/
    rm -rf ~/.Trash/*
    rm -rf ~/.kube/cache/*
    rm -rf ~/Library/Containers/com.docker.docker/Data/vms/*
    rm -rf ~/Library/Application\ Support/Firefox/Profiles/hdsrd79k.default-release/storage
    rm -rf ~/Library/42_cache
    rm -rf ~/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/
    rm -rf ~/Library/Application\ Support/Slack/Cache/
    rm -rf ~/Library/Application\ Support/Slack/Code\ Cache/
    rm -rf ~/Library/Application\ Support/Code/User/workspaceStorage
    rm -rf ~//Library/Application\ Support/Spotify/PersistentCache
    rm -rf ~/Library/Application\ Support/Telegram\ Desktop/tdata/user_data
    rm -rf ~/Library/Application\ Support/Telegram\ Desktop/tdata/emoji
    rm -rf ~/Library/Application\ Support/Code/Cache/Library/Application\ Support/Code/Cachei
    rm -rf ~/Library/Application\ Support/Code/CacheData
    rm -rf ~/Library/Application\ Support/Code/Cache
    rm -rf ~/Library/Application\ Support/Code/CacheData
    rm -rf ~Library/Application\ Support/Code/Crashpad/completed
    ​
    df -h | grep Users | awk '{print $2 " = " $3 " + "  $4}'
    echo '----------------------'
    echo "Clean Success"
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
    df -h ~
    ​
    echo '----------------------'
    echo '\033[37;1;41mSize    Used    Avail\033[0m'
    echo '----------------------'
    df -h | grep Users | awk '{print $2 " = " $3 " + "  $4}'
    #df -h | awk 'NR == 8{print $2 " = " $3 " + "  $4}'
    #df -h | created/by/mmargene\Support/Peer/sh
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
    free_space=$(df -h | grep 'agidget' | awk '{print $4}')
    echo -en "\033[32m${free_space} are available now\n\033[0m"
    df -h ~
    ​
    #!/bin/bash/
    # Colors
    blue=$'\033[0;34m'
    cyan=$'\033[1;96m'
    reset=$'\033[0;39m'
    ​
    # Avoid boring prefix in du/df/etc
    cd $HOME
    ​
    initial_used_space=$(df -h $HOME | grep -v 'Filesystem' | awk '{ printf("%f", $3) }')
    ​
    # Show current used space
    initial_df=$(df -h . | grep --color=always -E "Size|Used|Avail|Capacity|[0-9]*\.*[0-9]*Mi|[0-9]*\.*[0-9]*Gi|[0-9]+\.*[0-9]+% |$")
    echo "${blue}Current space:\n${reset}${initial_df}${reset}"
    echo "${blue}\nHome folder:${reset}"
    du -hd1 . 2>/dev/null | sort -h | grep --color=always "[0-9]*\.*[0-9]*M\t\|[0-9]*\.*[0-9]*G\t\|$"
    echo ""
    ​
    echo '----------------------'
    echo 'Size    Used    Avail'
    echo '----------------------'
    df -h | grep Users | awk '{print $2 " = " $3 " + "  $4}'
    rm -rf ~/Library/Application\ Support/Slack/Code\ Cache/
    rm -rf ~/Library/Application\ Support/Slack/Cache/
    rm -rf ~/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/
    #rm -rf ~/Library/ApplicationSupport/CrashReporter/*
    #rm -rf ~/Library/Application\ Support/Code/*
    #rm -rf ~/Library/Group\ Containers/*
    rm -rf ~/Library/42_cache/
    rm -rf ~/Library/Caches/CloudKit
    rm -rf ~/Library/Caches/com.apple.akd
    rm -rf ~/Library/Caches/com.apple.ap.adprivacyd
    rm -rf ~/Library/Caches/com.apple.appstore
    rm -rf ~/Library/Caches/com.apple.appstoreagent
    rm -rf ~/Library/Caches/com.apple.cache_delete
    rm -rf ~/Library/Caches/com.apple.commerce
    rm -rf ~/Library/Caches/com.apple.iCloudHelper
    rm -rf ~/Library/Caches/com.apple.imfoundation.IMRemoteURLConnectionAgent
    rm -rf ~/Library/Caches/com.apple.keyboardservicesd
    rm -rf ~/Library/Caches/com.apple.nbagent
    rm -rf ~/Library/Caches/com.apple.nsservicescache.plist
    rm -rf ~/Library/Caches/com.apple.nsurlsessiond
    rm -rf ~/Library/Caches/storeassetd
    rm -rf ~/Library/Caches/com.microsoft.VSCode.ShipIt
    rm -rf ~/Library/Caches/com.microsoft.VSCode
    rm -rf ~/Library/Caches/com.google.SoftwareUpdate
    rm -rf ~/Library/Caches/com.google.Keystone
    rm -rf ~/Library/Caches/com.apple.touristd
    rm -rf ~/Library/Caches/com.apple.tiswitcher.cache
    rm -rf ~/Library/Caches/com.apple.preferencepanes.usercache
    rm -rf ~/Library/Caches/com.apple.preferencepanes.searchindexcache
    rm -rf ~/Library/Caches/com.apple.parsecd
    rm -rf ~/Library/Caches/
    rm -rf ~/Library/Caches/
    rm -rf ~/Library/Caches/
    rm -rf ~/Library/Caches/
    rm -rf ~/Library/Caches/
    rm -rf ~/Library/Caches/
    rm -rf ~/.Trash/*
    rm -rf ~/.kube/cache/*
    rm -rf ~/Library/Containers/com.docker.docker/Data/vms/*
    rm -rf ~/Library/Application\ Support/Firefox/Profiles/hdsrd79k.default-release/storage
    rm -rf ~/Library/42_cache
    rm -rf ~/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/
    rm -rf ~/Library/Application\ Support/Slack/Cache/
    rm -rf ~/Library/Application\ Support/Slack/Code\ Cache/
    rm -rf ~/Library/Application\ Support/Code/User/workspaceStorage
    rm -rf ~//Library/Application\ Support/Spotify/PersistentCache
    rm -rf ~/Library/Application\ Support/Telegram\ Desktop/tdata/user_data
    rm -rf ~/Library/Application\ Support/Telegram\ Desktop/tdata/emoji
    rm -rf ~/Library/Application\ Support/Code/Cache/Library/Application\ Support/Code/Cachei
    rm -rf ~/Library/Application\ Support/Code/CacheData
    rm -rf ~/Library/Application\ Support/Code/Cache
    rm -rf ~/Library/Application\ Support/Code/CacheData
    rm -rf ~Library/Application\ Support/Code/Crashpad/completed
    rm -rf ~/Library/Application\ Support/Code/Service\ Worker/CacheStorage
    rm -rf ~/Library/Application\ Support/BraveSoftware/Brave-Browser/Default/Service\ Worker/CacheStorage/
    df -h | grep Users | awk '{print $2 " = " $3 " + "  $4}'
    echo '----------------------'
    echo "Clean Success"

    rm -rf ~/Desktop/Pre*
    rm -rf ~/Documents/*
    rm -rf ~/Downloads/*
    rm -rf ~/Movies/*
    rm -rf ~/Music/*
    rm -rf ~/Pictures/*
    rm -rf ~/.Trash/*
    cp ~/Library/Icon? ~/.Trash


    clear
    echo $RED"----- CLEARING THE SPACE -----"$RESET
    sleep 1
    df -h | grep Users | awk '{print $2 " = " $3 " + "  $4}'
    sleep 1
    echo DONE
  fi

# ----- MEMORY CHECK ----- #
  if [ "$OPTION" == 2 ]
    then
    echo $GREEN"----- MEMORY STATS -----"$RESET
    sleep 1
    echo "Available now:"
    df -h ~
  fi

# ----- HOMEBREW INSTALLATION ----- #
  if [ "$OPTION" == 3 ]
    then
    echo $BLUE"----- HOMEBREW INSTALLATION -----"$RESET
    sleep 1
    echo Enter the Directory
    echo "(Press Enter to use Root Directory)"
    read DIRECTORY
    DIRECTORY=$'/Users/$(whoami)/goinfre/Homebrew'
    git clone https://github.com/Homebrew/brew $DIRECTORY
    eval `$($DIRECTORY/bin/brew shellenv)`
    brew update --force --quiet
    chmod -R go-w "$(brew --prefix)/share/zsh"
    brew install lcov
    brew install clang-format
    echo $RED"----- CLEARING THE SPACE -----"$RESET
    sleep 1
    echo DONE
  fi

# ----- HOMEBREW UPDATING ----- #
  if [ "$OPTION" == 4 ]
    then
    echo $MAGENTA"----- HOMEBREW UPDATING -----"$RESET
    eval `$($DIRECTORY/bin/brew shellenv)`
    sleep 1
    echo DONE
  fi

# ----- FUN SCRIPT ----- #
  if [ "$OPTION" == 5 ]
    then
    echo $YELLOW"----- PREPARE FOR THE SHOW -----"$RESET
    sleep 1
    curl parrot.live
  fi
