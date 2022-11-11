#!/bin/bash



version="0.18.1.2"

_path="$HOME/Altcoins/Monero/"

ec=18; while [ $ec -ne 0 ]; do
    curl -O -C - --socks5-hostname 127.0.0.1:9050 https://downloads.getmonero.org/cli/monero-freebsd-x64-v${version}.tar.bz2
    ec=$?
done

ec=18; while [ $ec -ne 0 ]; do
    curl -O -C - --socks5-hostname 127.0.0.1:9050 https://downloads.getmonero.org/cli/monero-win-x64-v${version}.zip
    ec=$?
done

ec=18; while [ $ec -ne 0 ]; do
    curl -O -C - --socks5-hostname 127.0.0.1:9050 https://downloads.getmonero.org/cli/monero-win-x86-v${version}.zip
    ec=$?
done

ec=18; while [ $ec -ne 0 ]; do
    curl -O -C - --socks5-hostname 127.0.0.1:9050 https://downloads.getmonero.org/cli/monero-mac-x64-v${version}.tar.bz2
    ec=$?
done

ec=18; while [ $ec -ne 0 ]; do
    curl -O -C - --socks5-hostname 127.0.0.1:9050 https://downloads.getmonero.org/cli/monero-mac-armv8-v${version}.tar.bz2
    ec=$?
done

ec=18; while [ $ec -ne 0 ]; do
    curl -O -C - --socks5-hostname 127.0.0.1:9050 https://downloads.getmonero.org/cli/monero-linux-x64-v${version}.tar.bz2
    ec=$?
done

ec=18; while [ $ec -ne 0 ]; do
    curl -O -C - --socks5-hostname 127.0.0.1:9050 https://downloads.getmonero.org/cli/monero-linux-x86-v${version}.tar.bz2
    ec=$?
done

ec=18; while [ $ec -ne 0 ]; do
    curl -O -C - --socks5-hostname 127.0.0.1:9050 https://downloads.getmonero.org/cli/monero-linux-armv8-v${version}.tar.bz2
    ec=$?
done

ec=18; while [ $ec -ne 0 ]; do
    curl -O -C - --socks5-hostname 127.0.0.1:9050 https://downloads.getmonero.org/cli/monero-linux-armv7-v${version}.tar.bz2
    ec=$?
done

ec=18; while [ $ec -ne 0 ]; do
    curl -O -C - --socks5-hostname 127.0.0.1:9050 https://downloads.getmonero.org/cli/monero-android-armv8-v${version}.tar.bz2
    ec=$?
done

ec=18; while [ $ec -ne 0 ]; do
    curl -O -C - --socks5-hostname 127.0.0.1:9050 https://downloads.getmonero.org/cli/monero-android-armv7-v${version}.tar.bz2
    ec=$?
done

ec=18; while [ $ec -ne 0 ]; do
    curl -O -C - --socks5-hostname 127.0.0.1:9050 https://downloads.getmonero.org/cli/monero-freebsd-x64-v${version}.tar.bz2
    ec=$?
done

ec=18; while [ $ec -ne 0 ]; do
    curl -O -C - --socks5-hostname 127.0.0.1:9050 https://downloads.getmonero.org/gui/monero-gui-win-x64-v${version}.zip
    ec=$?
done

ec=18; while [ $ec -ne 0 ]; do
    curl -O -C - --socks5-hostname 127.0.0.1:9050 https://downloads.getmonero.org/gui/monero-gui-install-win-x64-v${version}.exe
    ec=$?
done

ec=18; while [ $ec -ne 0 ]; do
    curl -O -C - --socks5-hostname 127.0.0.1:9050 https://downloads.getmonero.org/gui/monero-gui-mac-x64-v${version}.dmg
    ec=$?
done

ec=18; while [ $ec -ne 0 ]; do
    curl -O -C - --socks5-hostname 127.0.0.1:9050 https://downloads.getmonero.org/gui/monero-gui-linux-x64-v${version}.tar.bz2
    ec=$?
done

ec=18; while [ $ec -ne 0 ]; do
    curl -O -C - --socks5-hostname 127.0.0.1:9050 https://www.getmonero.org/downloads/hashes.txt
    ec=$?
done

mkdir "$_path"/clients/${version}/

mv "$_path"/clients/monero-* "$_path"/clients/${version}/

mv "$_path"/clients/hashes.txt "$_path"/clients/${version}/
