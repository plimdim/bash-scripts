#!/bin/bash


#tmp=$( curl --silent "https://api.github.com/repos/layer2tech/mercury-wallet/releases/latest"  |  jq ".. .tag_name? // empty"  | sed -e 's/\"//g' )

tmp=$( curl --socks5-hostname 127.0.0.1:9050 --silent "https://api.github.com/repos/layer2tech/mercury-wallet/releases/latest"  |  jq ".. .tag_name? // empty"  | sed -e 's/\"//g' )

if [[ -z "$tmp" ]]; then
    echo "Error!!!"
    exit
fi

last_version=$( echo "${tmp:1}" )
#last_version=$( echo "${tmp}" | cut -d "-" -f 2 )

#echo $last_version

#wget -q --show-progress https://github.com/layer2tech/mercury-wallet/releases/download/"${tmp}"/mercurywallet-${last_version}.AppImage

ec=18

while [ $ec -ne 0 ]; do
    curl -LO -C - --socks5-hostname 127.0.0.1:9050 https://github.com/layer2tech/mercury-wallet/releases/download/"${tmp}"/mercurywallet-${last_version}.AppImage
    ec=$?
done

#wget -q --show-progress https://github.com/layer2tech/mercury-wallet/releases/download/"${tmp}"/mercurywallet-${last_version}.AppImage.asc

curl -LO -C - --socks5-hostname 127.0.0.1:9050 https://github.com/layer2tech/mercury-wallet/releases/download/"${tmp}"/mercurywallet-${last_version}.AppImage.asc

#wget -q --show-progress https://github.com/layer2tech/mercury-wallet/releases/download/"${tmp}"/latest-linux.yml

curl -LO -C - --socks5-hostname 127.0.0.1:9050 https://github.com/layer2tech/mercury-wallet/releases/download/"${tmp}"/latest-linux.yml


#last_version_dir="$last_version"
last_version_dir=$( echo "$last_version" | cut -d "_" -f 2 )

#echo $last_version_dir

if [[ ! -d  "$last_version_dir" ]] ; then
    mkdir "$last_version_dir"
fi

mv mercurywallet-${last_version}.AppImage "$last_version_dir"/

mv mercurywallet-${last_version}.AppImage.asc "$last_version_dir"/

mv latest-linux.yml "$last_version_dir"/
