#!/usr/env bash
rake generate
rake deploy
git add -A -f *
git commit -m 'auto-update'
git push origin master
rake notify
if [ -d "/Volumes/DEVELOPER" ]; then
  ditto -v $HOME/Developer/danijelj.com /Volumes/DEVELOPER/danijelj.com/
fi
echo "Pushed and Published!"

