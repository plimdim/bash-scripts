#!/bin/bash



version="11.5.7"

_path="$HOME/Downloads/Linux/tor-browser/tor_profiles_creator"

ec=18; while [ $ec -ne 0 ]; do
    curl -O -C - --socks5-hostname 127.0.0.1:9050 https://dist.torproject.org/torbrowser/${version}/tor-browser-linux64-${version}_en-US.mar
    ec=$?
done

ec=18; while [ $ec -ne 0 ]; do
    curl -O -C - --socks5-hostname 127.0.0.1:9050 https://dist.torproject.org/torbrowser/${version}/tor-browser-linux64-${version}_en-US.tar.xz
    ec=$?
done

ec=18; while [ $ec -ne 0 ]; do
    curl -O -C - --socks5-hostname 127.0.0.1:9050 https://dist.torproject.org/torbrowser/${version}/tor-browser-linux64-${version}_en-US.tar.xz.asc
    ec=$?
done


sha256sum "$_path"/tor-browser-linux64-${version}_en-US.mar > "$_path"/tor-browser-linux64-${version}_en-US.mar.txt

mkdir "$_path"/versions/${version}/

mv "$_path"/tor-browser-linux64-${version}_en-US.* "$_path"/versions/${version}/
