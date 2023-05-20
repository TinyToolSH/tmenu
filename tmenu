#!/bin/bash
read -r -d '' list

menu="dmenu"
args=""

while getopts dfrp: option
do
    case "${option}" in
        d) menu="dmenu";;
        f) menu="fzf";;
        r) menu="rofi -dmenu";;
        # couldn't make it possible to pass as just a string ($2?), had to pass as a parameter
        p) args="${OPTARG}";;
        *) echo "menu not available"; exit 1 ;;
    esac
done

# currently not removing single quotes from parameters
# demo of behaviour: tmenu.sh -d -p "-p 'a prompt'"
menu_command="$menu $args"

printf '%b\n' "$list" | $menu_command  