#!/bin/sh

# Exit on Error
set -e

cd /data

user=factorio

mkdir /home/$user
groupadd -g 1000 $user
useradd -s /bin/false -u 1000 -g 1000 $user

# Delete Script on Exit
[ -f "$0" ] && rm -f "$0"
