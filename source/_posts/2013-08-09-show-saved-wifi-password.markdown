---
layout: post
title: "Show Saved WiFi Password"
date: 2013-08-09 17:09:31 +1100
comments: true
categories: hacking
author: Danijel James
---
Source for script that spits out WiFi password saved in Windows 7 or 8. Haven’t tested this on XP or Vista.

    ::===START=========================================
    @echo off
    netsh wlan show profiles
    echo.
    echo.
    set /p UserInputPath=" Reveal which WiFi connection password:  "
    netsh wlan show %UserInputPath% key=clear
    netsh wlan show gs key=clear
    pause
    ::===END===========================================
    
I cannot claim copyright to this code, as it is pretty much just a mouthful of commands, so it shall be freely available in the Public Domain.

`#MigratedPost`
