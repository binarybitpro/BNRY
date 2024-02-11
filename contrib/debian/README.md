
Debian
====================
This directory contains files used to package binarybitd/binarybit-qt
for Debian-based Linux systems. If you compile binarybitd/binarybit-qt yourself, there are some useful files here.

## binarybit: URI support ##


binarybit-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install binarybit-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your binarybit-qt binary to `/usr/bin`
and the `../../share/pixmaps/binarybit128.png` to `/usr/share/pixmaps`

binarybit-qt.protocol (KDE)

