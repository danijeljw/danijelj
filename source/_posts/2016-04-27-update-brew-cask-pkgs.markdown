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

brew update
brew cask update

casks=( $(brew cask list) )

for cask in ${casks[@]}
do
    # in the first line there is version
    current="$(brew cask info $cask | sed -n '1p' | sed -n 's/^.*: \(.*\)$/\1/p')"

    installed=( $(ls /opt/homebrew-cask/Caskroom/$cask))
    if (! [[ " ${installed[@]} " == *" $current "* ]]); then
        (set -x; brew cask install $cask --force;)
    fi
done

brew upgrade
```

Reinstall brew &amp; cask packages:

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
