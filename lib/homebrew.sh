#!/usr/bin/bash

SCRIPT="${BASH_SOURCE[0]}"
SCRIPTPATH=$(dirname "$SCRIPT")

# shellcheck disable=SC1091
source "$SCRIPTPATH"/colours.sh

function print_homebrew_msg()
{
    printf "%b%s%b\n" "$BLUE_FC" "$1" "$DEFAULT_FC"
}

# https://github.com/daniiomir/faq_for_school_21
function install_homebrew()
{
    if ! command -v brew &> /dev/null
    then
        print_homebrew_msg "INSTALLING HOMEBREW"
        curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh
    else
        print_homebrew_msg "HOMEBREW IS INSTALED"
    fi
}

function update_homebrew()
{
    if ! command -v brew &> /dev/null; then install_homebrew; fi
    print_homebrew_msg "UPDATING HOMEBREW"
    brew update
}
