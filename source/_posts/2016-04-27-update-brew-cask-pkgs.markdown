---
layout: post
title: "update brew cask pkgs"
date: 2016-04-27 11:03:52 +0930
comments: true
categories: hacking
author: Danijel James
published: true
---
Update brew packages:

```bash
brew update
brew upgrade
```

Update brew &amp; cask packages:

```bash
#!/usr/bin/env bash

rm -rf "$(brew --cache)"
brew update
brew cask update

for app in $(brew cask list); do
	brew cask install --force "${app}"
done

brew upgrade
```

**source:** _https://github.com/caskroom/homebrew-cask/issues/309_