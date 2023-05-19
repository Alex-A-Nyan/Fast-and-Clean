#!/usr/bin/bash

SCRIPT="${BASH_SOURCE[0]}"
SCRIPTPATH=$(dirname "$SCRIPT")

# shellcheck disable=SC1091
source "$SCRIPTPATH"/prints.sh

function show_menu()
{
    print_42line_nl
    printf "0 - 🔒 This Menu\n"
    printf "1 - 🧹 Clear the Memory\n"
    printf "2 - 🪐 Memory Space Information\n"
    printf "3 - 🍺 Install Homebrew\n"
    printf "4 - 🍺 Update Homebrew\n"
    printf "5 - 🦜 Dancing Parrot Show\n"
    printf "q - ❌ Quit\n"
    print_42line_nl
}
