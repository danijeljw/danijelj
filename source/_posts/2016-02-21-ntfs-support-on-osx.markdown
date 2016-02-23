---
layout: post
title: "NTFS support on OSX"
date: 2016-02-21 12:06:07 +1100
comments: true
categories: hacking
author: Danijel James
published: true
---
NTFS support is available for OS X for free on:

|v.N°|v.Name| |
|:---:|:---|:---:|
|10.6|Snow Leopard|<font color="green"><i class="fa fa-check"></i></font>|
|10.7|Lion|<font color="green"><i class="fa fa-check"></i></font>|
|10.8|Mountain Lion|<font color="green"><i class="fa fa-check"></i></font>|
|10.9|Mavericks|<font color="green"><i class="fa fa-check"></i></font>|
|10.10|Yosemite|<font color="green"><i class="fa fa-check"></i></font>|
|10.11|El Capitan|<font color="green"><i class="fa fa-check"></i></font>|

####Install FUSE for OS X

Install FUSE for OS X first, it's the base for connecting 3rd party file systems to the machine.

{% img /images/2016/02/2016-02-21_FUSE.for.OSX.png 312 219 'ensure all options are checked' 'FUSE for OS X' %}

**Download:** <a href="http://osxfuse.github.io/">FUSE for OS X</a>

###Install NTFS-3G

Installing NTFS-3G enables the actual read/write to NTFS formatted drives. During install there is an option to use `No caching` or `UBLIO caching`. In my experience it's better to use `No caching`.

{% img /images/2016/02/2016-02-21_to.cache.or.not.to.cache.png 312 220 'to cache or not to cache' 'UBLIO caching NTFS-3G' %}

Once this has been installed restart the machine.

**Download:** <a href="http://macntfs-3g.blogspot.com/2010/10/ntfs-3g-for-mac-os-x-2010102.html">NTFS-3G</a>

###Install fuse-wait

Post-reboot you will get the following error message:

{% img /images/2016/02/2016-02-21_reboot.error.png 211 109 'NTFS-3G post install error' 'NTFS-3G post install error' %}

fuse-wait is a patch for NTFS-3G that just stops this annoying error messages from appearing on your system.

**Download:** <a href="https://github.com/bfleischer/fuse_wait/downloads">fuse-wait</a>
