#!/usr/bin/bash

SCRIPT="${BASH_SOURCE[0]}"
SCRIPTPATH=$(dirname "$SCRIPT")

# shellcheck disable=SC1091
source "$SCRIPTPATH"/colours.sh

# shellcheck disable=SC1091
source "$SCRIPTPATH"/prints.sh

function print_memstat_msg()
{
    printf "%b%s%b\n" "$GREEN_FC" "$1" "$DEFAULT_FC"
}

function show_memory_space_info()
{
    print_memstat_msg "MEMORY STATS"
    df -h "$HOME"
}

function show_memstats()
{
    print_line_nl 21
    printf 'Size    Used    Avail\n'
    print_line_nl 21
    df -h | grep Users | awk '{print $2 " = " $3 " + "  $4}'
    print_line_nl 21
}
