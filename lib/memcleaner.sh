#!/usr/bin/bash

SCRIPT="${BASH_SOURCE[0]}"
SCRIPTPATH=$(dirname "$SCRIPT")

# shellcheck disable=SC1091
source "$SCRIPTPATH"/colours.sh

# shellcheck disable=SC1091
source "$SCRIPTPATH"/meminfo.sh

function print_memclear_msg()
{
    printf "%b%s%b\n" "$RED_FC" "$1" "$DEFAULT_FC"
}

function clear_library_caches_dir()
{
    LIBRARY_CACHES_DIR="$HOME/Library/Caches"
    rm -rf "$LIBRARY_CACHES_DIR"/CloudKit
    rm -rf "$LIBRARY_CACHES_DIR"/com.apple.akd
    rm -rf "$LIBRARY_CACHES_DIR"/com.apple.ap.adprivacyd
    rm -rf "$LIBRARY_CACHES_DIR"/com.apple.appstore
    rm -rf "$LIBRARY_CACHES_DIR"/com.apple.appstoreagent
    rm -rf "$LIBRARY_CACHES_DIR"/com.apple.cache_delete
    rm -rf "$LIBRARY_CACHES_DIR"/com.apple.commerce
    rm -rf "$LIBRARY_CACHES_DIR"/com.apple.iCloudHelper
    rm -rf "$LIBRARY_CACHES_DIR"/com.apple.imfoundation.IMRemoteURLConnectionAgent
    rm -rf "$LIBRARY_CACHES_DIR"/com.apple.keyboardservicesd
    rm -rf "$LIBRARY_CACHES_DIR"/com.apple.nbagent
    rm -rf "$LIBRARY_CACHES_DIR"/com.apple.nsservicescache.plist
    rm -rf "$LIBRARY_CACHES_DIR"/com.apple.nsurlsessiond
    rm -rf "$LIBRARY_CACHES_DIR"/storeassetd
    rm -rf "$LIBRARY_CACHES_DIR"/com.microsoft.VSCode.ShipIt
    rm -rf "$LIBRARY_CACHES_DIR"/com.microsoft.VSCode
    rm -rf "$LIBRARY_CACHES_DIR"/com.google.SoftwareUpdate
    rm -rf "$LIBRARY_CACHES_DIR"/com.google.Keystone
    rm -rf "$LIBRARY_CACHES_DIR"/com.apple.touristd
    rm -rf "$LIBRARY_CACHES_DIR"/com.apple.tiswitcher.cache
    rm -rf "$LIBRARY_CACHES_DIR"/com.apple.preferencepanes.usercache
    rm -rf "$LIBRARY_CACHES_DIR"/com.apple.preferencepanes.searchindexcache
    rm -rf "$LIBRARY_CACHES_DIR"/com.apple.parsecd
}

function clear_library_app_support_dir()
{
    LIBRARY_APP_SUPPORT_DIR="$HOME/Library/Application\ Support"
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/Firefox/Profiles/hdsrd79k.default-release/storage
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/Code/User/workspaceStorage
    rm -rf ~"$LIBRARY_APP_SUPPORT_DIR"/Spotify/PersistentCache
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/Telegram\ Desktop/tdata/user_data
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/Telegram\ Desktop/tdata/emoji
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/Code/Cache/Library/Application\ Support/Code/Cachei
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/Code/CacheData
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/Code/Cache
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/Code/CacheData
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/Code/Crashpad/completed
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/Code/Service\ Worker/CacheStorage
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/BraveSoftware/Brave-Browser/Default/Service\ Worker/CacheStorage/
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/Slack/Cache/*
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/Slack/Service\ Worker/CacheStorage/*
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/Code/Cache
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/Code/CachedData
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/Code/CachedExtension
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/Code/CachedExtensions
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/Code/CachedExtensionVSIXs
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/Code/Code\ Cache
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/Slack/Cache
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/Slack/Code\ Cache
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/Slack/Service\ Worker/CacheStorage
    rm -rf "$LIBRARY_APP_SUPPORT_DIR"/Code/User/workspaceStorage
}

# TODO: detect the rubbish to be cleansed
function clear_space()
{
    show_memstats
    print_memclear_msg "CLEARING THE SPACE"

    clear_library_caches_dir
    clear_library_app_support_dir

    # uncategorised yet
    rm -rf ~/.kube/cache/*
    rm -rf ~/.Trash/*
    rm -rf ~/Library/Containers/com.docker.docker/Data/vms/*

    print_memclear_msg "THE SPACE HAS BEEN CLEARED"
    show_memstats
}
