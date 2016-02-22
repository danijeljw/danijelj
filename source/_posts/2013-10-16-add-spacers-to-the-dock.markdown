---
layout: post
title: "add spacers to the dock"
date: 2013-10-16 21:35:11 +1100
comments: true
categories: hacking
author: Danijel James
published: true
---
The [Dock](http://en.wikipedia.org/wiki/Dock_(OS_X) is great, but sometimes it gets cluttered with all your favourite apps and you want a way to keep it organised. There is a great [Dummies article](http://www.dummies.com/how-to/content/how-to-work-with-the-mac-dock.html) if you are interested in a starting point, but what if you need to “group” your applications together instead?

There is a Terminal command that can add spacers to your Dock. Open Terminal _(Applications > Utilities)_, then type the following:


    defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'

This will add a spacer to your Dock. If you need more than one, type it for as many as you need and then type:


    killall Dock

Your Dock will restart and you’ll see the spacers to the right of your applications. Drag spacers around to create “groups” in your Dock. To remove a spacer, simply drag it off the Dock.

Here is a nice version of the way to automate the process with a shell script. It will prompt you with how many spacers you need and add them, then restart the Dock.

    #!/bin/bash
    echo "Enter number of spacers required: "
    read noSpacers
    c=1
    while [ $c -le $noSpacers ]
    do
      defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
      (( c++ ))
    done
    killall Dock

`#MigratedPost`

