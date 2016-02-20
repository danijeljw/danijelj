---
layout: post
title: "Fix Corrupt Recycle Bin"
date: 2013-07-28 16:58:04 +1100
comments: true
categories: hacking
author: Danijel James
---
Sometimes you need to reset the Recycle Bin because it’s giving you an error message saying it’s corrupt. I have seen a few posts around on the internet that try to deal with this issue but none of them were what I needed. Rather than fiddling with the Windows interface, just 2 commands will fix this for you. Remember, if you are getting an error message for a different drive, then change to that drive instead.

    C:\> takeown /f $Recycle.bin /r /a
    C:\> rd /s C:\$Recycle.bin

If you need to run the commands for another drive, change to that drive and replace the C:\ in C:\$Recycle.bin on the second line. Problem solved.

This script will ask which drive is causing the problems, and attempt to resolve it. Save it as a BAT file type and run this (may require to be run as Admin).

    ::==BEGIN CODE==================
    COLOR 0A
    set /p drive=Enter drive letter:
    %drive%:
    takeown /f $Recycle.bin /r /a
    rd /s %drive%:\$Recycle.bin
    ::==END CODE====================

`#MigratedPost`
