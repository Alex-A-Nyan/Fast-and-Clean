#!/usr/bin/bash

SCRIPT="${BASH_SOURCE[0]}"
SCRIPTPATH=$(dirname "$SCRIPT")

# shellcheck disable=SC1091
source "$SCRIPTPATH"/colours.sh

function print_line()
{
    if [ "$1" -gt "0" ]; then printf -- "-%.0s" $(seq "$1"); fi
}

function print_line_nl()
{
    print_line "$1"
    printf "\n"
}

function print_42line()
{
    print_line 42
}

function print_42line_nl()
{
    print_line_nl 42
}

function print_good_bye()
{
    printf "%b%s%b\n" "$WHITE_FC" "See 'ya =^_^=" "$DEFAULT_FC"
    print_42line_nl
}
