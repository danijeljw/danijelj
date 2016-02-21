#!/bin/bash
git add -A -f *
git commit -m 'auto-update'
git push origin master
rake generate
rake deploy
rake notify
echo "Pushed and Published!"

