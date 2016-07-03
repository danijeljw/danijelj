---
layout: post
title: "fullbrewupdate.sh"
date: 2016-06-20 14:23:35 +0930
comments: true
categories: hacking
author: Danijel-James Wynyard
published: true
---
This might be boring to some of you, but it's a starting script for brew.sh to be updated with!

	fullBrewUpdate(){
		brew update
		brew cask update

		casks=( $(brew cask list) )

		for cask in ${casks[@]}
		do
		    # in the first line there is version
			current="$(brew cask info $cask | sed -n '1p' | sed -n 's/^.*: \(.*\)$/\1/p')"

			installed=( $(ls /usr/local/Caskroom/$cask))
			if (! [[ " ${installed[@]} " == *" $current "* ]]); then
				(set -x; brew cask install $cask --force;)
			fi
		done

		brew upgrade
		brew cleanup
		echo -e "\e[31mBackup of brew list in action\e[39m"
		echo "$(brew list)" > ~/Dropbox/Documents/brewlists/brew_list.txt
		echo -e "\e[92mBackup of brew cask list in action\e[39m"
		echo "$(brew cask list)" > ~/Dropbox/Documents/brewlists/brew_cask_list.txt
	}