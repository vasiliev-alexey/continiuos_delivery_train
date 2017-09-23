#/bin/bash
apt-get update && apt-get upgrade -y && apt-get install chef -y
cd /data/chef


chef-solo -j node.json -c solo.rb

