#!/bin/bash

# loop a folder recusively,
print_folder_recurse() {
    for i in "$1"/*
    do
        if [ -d "$i" ]; then
            print_folder_recurse "$i"
        elif [ -f "$i" ]; then
           temp="$(strings -f $i | egrep -i "wpa|psk|generatewpa|generatekey|md5|md4|sha256|sha1" --color=always)"
           if [ -z "$temp" ]; then
              continue
           else
              output="$output\n$temp"
           fi
        fi
    done
}


# try get path from param
path=""
output=""
if [ ! -d "$1" ]
then
    echo "No valid path specified"
    exit 1
fi
if [ ! -f ansi2html.sh ]
then
    echo "ansi2html.sh must be in the same place as this script"
fi

path=$1;
echo "pls wait..."
print_folder_recurse $path

if [ -z "$output" ]
then
    echo "No results :("
else
    echo -e "$output"  | sh ansi2html.sh > results.html
    echo "Successfully outputed results to results.html"
fi