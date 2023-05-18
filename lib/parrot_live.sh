#!/usr/bin/bash

SCRIPT="${BASH_SOURCE[0]}"
SCRIPTPATH=$(dirname "$SCRIPT")

# shellcheck disable=SC1091
source "$SCRIPTPATH"/colours.sh

function print_parrot_msg()
{
    printf "%b%s%b\n" "$YELLOW_FC" "$1" "$DEFAULT_FC"
}

function show_parrot_show()
{
    print_parrot_msg "PREPARE FOR THE SHOW"
    sleep 1
    curl parrot.live
}
