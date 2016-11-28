#!/bin/sh

# Exit on Error
set -e

cd /data

save=world.zip
path=/data/factorio/saves/
cmd=/data/factorio/bin/x64/factorio

if [ ! -f "$cmd" ]; then
   url=https://www.factorio.com/get-download/$VERSION/headless/linux64
   arc=/data/factorio.tar.gz

   echo -n "Downloading Factorio Server..."
   wget -q $url -O $arc
   echo "OK"

   echo -n "Unpacking Archive..."
   tar -xzf $arc
   echo "OK"

   rm -f $arc
fi

if [ ! -f "$path$save" ]; then
   exec $cmd --create $save
fi

exec $cmd --start-server $path$save
