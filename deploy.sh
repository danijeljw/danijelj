#!/bin/bash
rake generate
rake deploy
git add -A -f *
git commit -m 'auto-update'
git push origin master
#rake notify
echo "Pushed and Published!"

