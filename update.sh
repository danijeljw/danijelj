#!/usr/bin/env bash
rake generate
git add -A -f *
git commit -a -S -m 'auto update signed'
wget -q --spider http://google.com
if [ $? -eq 0 ]; then
    rake deploy
    git push origin master
#   rake notify
    echo "Signed, deployed and git updated"
    if [ -d "/Volumes/DEVELOPER" ]; then
        ditto -v $HOME/Developer/danijelj.com /Volumes/DEVELOPER/danijelj.com/
        echo "Copied to backup too!"
    fi
else
    if [ -d "/Volumes/DEVELOPER" ]; then
        ditto -v $HOME/Developer/danijelj.com /Volumes/DEVELOPER/danijelj.com/
        echo "Only copied to backup :-("
    fi
fi
