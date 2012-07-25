#!/bin/sh

[ -z $1 ] && echo "What hooks to run? (arg 0)" && exit 1

IFS=$'\n'; for entry in $( cat /etc/passwd | awk -F: '$3 >= 1000' ); do
    user=$( echo "$entry" | cut -d: -f1 )
    home=$( echo "$entry" | cut -d: -f6 )
    handler="$home/.hooks/$@"
    [ -x "$handler" ] && su - "$user" -c "$handler"
done

