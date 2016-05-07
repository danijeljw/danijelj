---
layout: post
title: "create ram disk"
date: 2016-04-18 14:49:15 +0930
comments: true
categories: hacking
author: Danijel-James Wynyard
published: true
---
##Disk Size

Size of RAM Disk is `z * 2048`, where `z` is represented in MB

A 600MB RAM Disk would be: `1228800` _(That is: 600 * 2048 = 1228800)_

## Disk Formats Available:

| Format | User Visible Name |
|:---|:---|
|ExFat | ExFAT |
|free | Free Space |
|MS-DOS | MS-DOS (FAT) |
|MS-DOS FAT12 | MS-DOS (FAT12) |
|MS-DOS FAT16 | MS-DOS (FAT16) |
|fat32 | MS-DOS (FAT32) |
|HFS+ | Mac OS Extended |
|hfsx | Mac OS Extended (Case-sensitive) |
|jhfsx | Mac OS Extended (Case-sensitive, Journaled) |
|jhfs+ | Mac OS Extended (Journaled) |

## Keys

`$x` speficied Format from table above
`$y` speficied name of intended volume
`$z` specified size of file _(once multiplied by 2028)_

## Mac OS X 10.8, 10.9, 10.10, 10.11

```bash
diskutil erasevolume $x '$y' `hdiutil attach nomount ram://$z`
```

## Mac OS X 10.5, 10.6, 10.7

```bash
diskutil erasevolume $x '$y' `hdiutil attach -nomount ram://$z`
```
## Mac OS X 10.4 and earlier

```bash
hdid -nomount ram://$z
newfs_hfs /dev/disk1
mkdir /tmp/ramdisk1
mount -t $x /dev/disk1 /tmp/ramdisk1
```

In OS X 10.4 and earlier, to unmount the disk type: `hdiutil detach /dev/disk1`
