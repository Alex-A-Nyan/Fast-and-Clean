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
}

function clear_library_app_support_dir()
{
    rm -rf ~/Library/Application\ Support/Firefox/Profiles/hdsrd79k.default-release/storage
    rm -rf ~/Library/Application\ Support/Code/User/workspaceStorage
    rm -rf ~/Library/Application\ Support/Spotify/PersistentCache
    rm -rf ~/Library/Application\ Support/Telegram\ Desktop/tdata/user_data
    rm -rf ~/Library/Application\ Support/Telegram\ Desktop/tdata/emoji
    rm -rf ~/Library/Application\ Support/Code/Cache/Library/Application\ Support/Code/Cachei
    rm -rf ~/Library/Application\ Support/Code/CacheData
    rm -rf ~/Library/Application\ Support/Code/Cache
    rm -rf ~/Library/Application\ Support/Code/CacheData
    rm -rf ~/Library/Application\ Support/Code/Crashpad/completed
    rm -rf ~/Library/Application\ Support/Code/Service\ Worker/CacheStorage
    rm -rf ~/Library/Application\ Support/BraveSoftware/Brave-Browser/Default/Service\ Worker/CacheStorage/
    rm -rf ~/Library/Application\ Support/Slack/Cache/*
    rm -rf ~/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/*
    rm -rf ~/Library/Application\ Support/Code/Cache
    rm -rf ~/Library/Application\ Support/Code/CachedData
    rm -rf ~/Library/Application\ Support/Code/CachedExtension
    rm -rf ~/Library/Application\ Support/Code/CachedExtensions
    rm -rf ~/Library/Application\ Support/Code/CachedExtensionVSIXs
    rm -rf ~/Library/Application\ Support/Code/Code\ Cache
    rm -rf ~/Library/Application\ Support/Slack/Cache
    rm -rf ~/Library/Application\ Support/Slack/Code\ Cache
    rm -rf ~/Library/Application\ Support/Slack/Service\ Worker/CacheStorage
    rm -rf ~/Library/Application\ Support/Code/User/workspaceStorage
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
