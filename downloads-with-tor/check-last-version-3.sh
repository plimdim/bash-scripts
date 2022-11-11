#!/bin/bash


#tmp=$( curl --silent "https://api.github.com/repos/monero-project/monero-gui/releases/latest"  |  jq ".. .tag_name? // empty" )

tmp=$( curl --socks5-hostname 127.0.0.1:9050 --silent "https://api.github.com/repos/monero-project/monero-gui/releases/latest" |  jq ".. .tag_name? // empty" )

if [[ -z "$tmp" ]]; then
    echo "Error!!!"
else
    echo "monero-gui last version $tmp"
fi


#tmp=$( curl --silent "https://api.github.com/repos/monero-project/monero/releases/latest"  |  jq ".. .tag_name? // empty" )

tmp=$( curl --socks5-hostname 127.0.0.1:9050 --silent "https://api.github.com/repos/monero-project/monero/releases/latest" |  jq ".. .tag_name? // empty" )

if [[ -z "$tmp" ]]; then
    echo "Error!!!"
else
    echo "monero last version $tmp"
fi

