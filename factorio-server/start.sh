#!/bin/sh

# Exit on Error
set -e

u=factorio

usermod --uid $UID $u
groupmod --gid $GID $u

chown -R $u:$u .
chmod -R 755 .

exec sudo -E -u $u /start-server.sh
