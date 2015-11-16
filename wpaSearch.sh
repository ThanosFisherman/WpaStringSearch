#!/bin/bash

for b in bin/**/*
do
strings -f $b | egrep -i "wpa|psk|generate|md5|md4|sha256|sha1" --color=always
done
for b in sbin/**/*
do
strings -f $b | egrep -i "wpa|psk|generate|md5|md4|sha256|sha1" --color=always
done
for b in lib/**/*
do
strings -f $b | egrep -i "wpa|psk|generate|md5|md4|sha256|sha1" --color=always
done
for b in usr/**/*
do
strings -f $b | egrep -i "wpa|psk|generate|md5|md4|sha256|sha1" --color=always
done
for b in dev/**/*
do
strings -f $b | egrep -i "wpa|psk|generate|md5|md4|sha256|sha1" --color=always
done
for b in usrfs/**/*
do
strings -f $b | egrep -i "wpa|psk|generate|md5|md4|sha256|sha1" --color=always
done
