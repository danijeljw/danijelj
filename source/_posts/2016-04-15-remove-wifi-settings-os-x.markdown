---
layout: post
title: "remove wifi settings os x"
date: 2016-04-15 11:52:33 +0930
comments: true
categories: 
author: Danijel-James Wynyard
published: true
---
Firstly disable WiFi from menu bar.

Navigate to the following path: `/Library/Preferences/SystemConfiguration/`

Remove the following files:

```bash
com.apple.airport.preferences.plist
com.apple.network.identification.plist
NetworkInterfaces.plist
preferences.plist
```

Alternatively, you can use the following script:

```bash
#!/usr/bin/env bash

sudo echo "" # Asks for passwords
( while true; do sudo -v; sleep 40; done ) &
sudoPID=$!

sudo rm -rf /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist
sudo rm -rf /Library/Preferences/SystemConfiguration/com.apple.network.identification.plist
sudo rm -rf /Library/Preferences/SystemConfiguration/NetworkInterfaces.plist
sudo rm -rf /Library/Preferences/SystemConfiguration/preferences.plist

sudo -k
```

Restart the computer and reconnect to the wifi network.
