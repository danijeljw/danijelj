---
layout: post
title: "adding desktop wallpapers"
date: 2015-12-20 11:32:42 +1100
comments: true
categories: hacking
author: Danijel-James Wynyard
---
To move images you love to the default Wallpapers section of OS X, move them using Terminal.

TO move a file from my desktop called **DWAD Danijel.jpg** I do the following:

    sudo mv ~/Desktop/DWAD\ Danijel.jpg /Library/Desktop\ Wallpapers/

You'll be asked for your Admin password and then feel free to change your desktop wallpaper and select the image.

{% img /images/2015-12-20_adding_desktop_wallpapers.png %}

If you have a folder with multiple images _(JPG format)_ on your desktop, try the following instead:

    sudo mv ~/Desktop/wallpapers/* /Library/Desktop\ Wallpapers/

That should do the trick! 😎

_**Note:** I used `mv` instead your can use `cp` if you prefer; but `sudo` is required!_

`#MigratedPost`

