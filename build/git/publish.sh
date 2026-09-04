#!/bin/bash

cd /home/eric/Projects/talk++linux

cd /home/eric/Projects/talk++linux/build/git
r=$(cat .build_count)
rp=$((r+1))
echo "$rp" > .build_count

cd /home/eric/Projects/talk++linux

version = "0.1-alpha"

git add .
git commit -m "build $version $rp"
git push -u origin main --force
