#!/bin/bash

free_space=$(df -h | grep '/Users/' | awk '{print $4}')
echo "\033[31m\n${free_space} before free space\n\033[0m"

# Очистка всех кешей
rm -rf ~/Library/Caches/*
rm -rf ~/Library/42_cache

# Очистка корзины
rm -rf ~/.Trash/* -y

# Очистка слака
rm -rf ~/Library/Application\ Support/Slack/Code\ Cache/
rm -rf ~/Library/Application\ Support/Slack/Cache/*
rm -rf ~/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/*

# Очистка Telegram
rm -rf ~/Library/Application\ Support/Telegram\ Desktop/tdata/user_data
rm -rf ~/Library/Application\ Support/Telegram\ Desktop/tdata/emoji

# Очистка VSCode
rm -rf ~/Library/Application\ Support/Code/Cache
rm -rf ~/Library/Application\ Support/Code/CachedData
rm -rf ~/Library/Application\ Support/Code/CachedExtension
rm -rf ~/Library/Application\ Support/Code/CachedExtensions
rm -rf ~/Library/Application\ Support/Code/CachedExtensionVSIXs
rm -rf ~/Library/Application\ Support/Code/Code\ Cache
rm -rf ~/Library/Application\ Support/Code/User/workspaceStorage
rm -rf ~/Library/Application\ Support/Code/Crashpad/completed

# Очистка XCode
rm -rf ~/Library/Developer\CoreSimulator/Devices/*

# Очистка Google Chrome
rm -rf ~/Library/Application\ Support/Google/Chrome/Default/Service\ Worker/CacheStorage/*
rm -rf ~/Library/Application\ Support/Google/Chrome/Crashpad/completed/*

# Очистка Safari
rm -rf ~/Library/Caches/Apple\ -\ Safari\ -\ Safari\ Extensions\ Gallery; \
rm -rf ~/Library/Caches/Metadata/Safari; \
rm -rf ~/Library/Caches/com.apple.Safari; \
rm -rf ~/Library/Caches/com.apple.WebKit.PluginProcess; \
rm -rf ~/Library/Cookies/Cookies.binarycookies; \
rm -rf ~/Library/Preferences/Apple\ -\ Safari\ -\ Safari\ Extensions\ Gallery; \
rm -rf ~/Library/Preferences/com.apple.Safari.LSSharedFileList.plist; \
rm -rf ~/Library/Preferences/com.apple.Safari.RSS.plist; \
rm -rf ~/Library/Preferences/com.apple.Safari.plist; \
rm -rf ~/Library/Preferences/com.apple.WebFoundation.plist; \
rm -rf ~/Library/Preferences/com.apple.WebKit.PluginHost.plist; \
rm -rf ~/Library/Preferences/com.apple.WebKit.PluginProcess.plist; \
rm -rf ~/Library/PubSub/Database; \
rm -rf ~/Library/Saved\ Application\ State/com.apple.Safari.savedState

# Очистка докера
rm -rf ~/Library/Containers/com.docker.docker/Data/vms/* -y
rm -rf ~/Library/Containers/com.apple.Safari/Data/Library/Caches/* -y
rm -rf ~/Library/Containers/org.telegram.desktop/Data/Library/Application\ Support/Telegram\ Desktop/tdata/emoji/* -y

free_space=$(df -h | grep '/Users/' | awk '{print $4}')
echo "\033[32m${free_space} are available now\n\033[0m"
