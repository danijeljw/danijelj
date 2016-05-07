---
layout: post
title: "restore deleted brew formula"
date: 2016-05-01 01:06:49 +0930
comments: true
categories: hacking
author: Danijel-James Wynyard
published: true
---
Totally fucked up tonight by deleting Caskroom formula from the system.

Running `brew update` gave me the following error message:

```bash
| => brew update
To restore the stashed changes to /usr/local/Library/Taps/caskroom/homebrew-cask run:
  'cd /usr/local/Library/Taps/caskroom/homebrew-cask && git stash pop'
Already up-to-date.
```

So I do what it asks, then this pops up:

```bash
On branch master
Your branch is up-to-date with 'origin/master'.
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

    deleted:    Casks/itsycal.rb

no changes added to commit (use "git add" and/or "git commit -a")
```

To repair this got a list of the taps in brew:

```bash
| => brew tap
caskroom/cask
homebrew/completions
homebrew/core
homebrew/fuse
homebrew/games
homebrew/python
homebrew/science
```

Re-tapped the `caskroom/cask` tap:

```bash
| => brew tap caskroom/cask
```

Then I reinstalled ityscal again:

```bash
| => brew cask install itsycal
==> Downloading https://s3.amazonaws.com/itsycal/Itsycal-0.10.12.zip
######################################################################## 100.0%
==> Verifying checksum for Cask itsycal
==> Symlinking App 'Itsycal.app' to '/Users/danijel.james/Applications/Itsycal.app'
🍺  itsycal staged at '/opt/homebrew-cask/Caskroom/itsycal/0.10.12' (189 files, 3.7M)
```

To run a fix across all your taps _(you might not know which one is causing the problems)_, just tap into all the taps again:

```bash
for i in $(brew tap); do brew tap "$i"; done
```

This one liner is your life saver.

Problem solved !
