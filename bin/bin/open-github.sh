##!/usr/bin/env bash

url=$(git remote get-url origin 2>/dev/null)
# Exit if git failed
if [[ $? -ne 0 ]]; then
	echo "failed to get git remote"
	exit 1
fi

if [[ $url == *github.com* ]]; then
	if [[ $url == git@* ]]; then
		url="${url#git@}"
		url="${url/:/\/}" 
		url="https://$url"
	fi
	explorer.exe "$url"
else
	echo "This repository is not hosted on GitHub"
fi
