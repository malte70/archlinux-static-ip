#!/bin/sh
#
# Install script
#

if [[ -z "$PREFIX" ]]; then
	export PREFIX="/"
fi

# Binary
mkdir -p $PREFIX/usr/bin
cp archlinux-static-ip $PREFIX/usr/bin

# Documentation and example configuration
mkdir -p $PREFIX/usr/share/doc/archlinux-static-ip
cp README.md $PREFIX/usr/share/doc/archlinux-static-ip
cp network.example-conf $PREFIX/usr/share/doc/archlinux-static-ip
mkdir -p $PREFIX/usr/share/licenses/archlinux-static-ip
cp LICENSE $PREFIX/usr/share/licenses/archlinux-static-ip

# systemd unit
mkdir -p $PREFIX/usr/lib/systemd/system
cp network-static@.service $PREFIX/usr/lib/systemd/system

# Configuration folder
mkdir -p $PREFIX/etc/conf.d
