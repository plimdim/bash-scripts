#!/bin/bash


#tmp=$( curl --silent "https://api.github.com/repos/sparrowwallet/sparrow/releases/latest"  |  jq ".. .tag_name? // empty"  | sed -e 's/\"//g' )

tmp=$( curl --socks5-hostname 127.0.0.1:9050 --silent "https://api.github.com/repos/sparrowwallet/sparrow/releases/latest" |  jq ".. .tag_name? // empty" | sed -e 's/\"//g' )

if [[ -z "$tmp" ]]; then
    echo "Error!!!"
    exit
fi

last_version=$( echo "${tmp}" | cut -d "-" -f 2 )

#echo $last_version

#wget -q --show-progress https://github.com/sparrowwallet/sparrow/releases/download/"${tmp}"/sparrow-"${last_version}"-x86_64.tar.gz

ec=18

while [ $ec -ne 0 ]; do
    curl -LO -C - --socks5-hostname 127.0.0.1:9050 https://github.com/sparrowwallet/sparrow/releases/download/"${tmp}"/sparrow-"${last_version}"-x86_64.tar.gz
    ec=$?
done

#wget -q --show-progress https://github.com/sparrowwallet/sparrow/releases/download/"${tmp}"/sparrow-"${last_version}"-manifest.txt

curl -LO -C - --socks5-hostname 127.0.0.1:9050 https://github.com/sparrowwallet/sparrow/releases/download/"${tmp}"/sparrow-"${last_version}"-manifest.txt

#wget -q --show-progress https://github.com/sparrowwallet/sparrow/releases/download/"${tmp}"/sparrow-"${last_version}"-manifest.txt.asc

curl -LO -C - --socks5-hostname 127.0.0.1:9050 https://github.com/sparrowwallet/sparrow/releases/download/"${tmp}"/sparrow-"${last_version}"-manifest.txt.asc


last_version_dir="$last_version"
#last_version_dir=$( echo "$last_version" | cut -d "-" -f 1 )

#echo $last_version_dir

if [[ ! -d  "$last_version_dir" ]] ; then
    mkdir "$last_version_dir"
fi

mv sparrow-"${last_version}"-x86_64.tar.gz "$last_version_dir"/

mv sparrow-"${last_version}"-manifest.txt "$last_version_dir"/

mv sparrow-"${last_version}"-manifest.txt.asc "$last_version_dir"/
