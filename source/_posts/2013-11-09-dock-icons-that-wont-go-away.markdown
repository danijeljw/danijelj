---
layout: post
title: "dock icons that won't go away"
date: 2013-11-09 22:52:35 +1100
comments: true
categories: hacking
author: Danijel-James Wynyard
published: true
---
A client of mine who minimised an application to their Dock and their iMac crashed. When the computer rebooted, the icon of the minimised application was ever present in their Dock and it wasn’t selectable, repairable, removable – anything!

If you come across such a problem, open Terminal and run the following:

    rm -f ~/Library/Preferences/com.apple.dock.plist

Restart your Mac, problem solved.

`#MigratedPost`
