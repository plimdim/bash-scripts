#!/bin/bash


#tmp=$( curl --silent "https://api.github.com/repos/layer2tech/mercury-wallet/releases/latest"  |  jq ".. .tag_name? // empty" )

tmp=$( curl --socks5-hostname 127.0.0.1:9050 --silent "https://api.github.com/repos/layer2tech/mercury-wallet/releases/latest"  |  jq ".. .tag_name? // empty" )

if [[ -z "$tmp" ]]; then
    echo "Error!!!"
else
    echo "$tmp"
fi
