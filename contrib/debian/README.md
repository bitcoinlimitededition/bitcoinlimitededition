
Debian
====================
This directory contains files used to package bitcoinlimitededitiond/bitcoinlimitededition-qt
for Debian-based Linux systems. If you compile bitcoinlimitededitiond/bitcoinlimitededition-qt yourself, there are some useful files here.

## bitcoinlimitededition: URI support ##


bitcoinlimitededition-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install bitcoinlimitededition-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your bitcoinlimitededition-qt binary to `/usr/bin`
and the `../../share/pixmaps/bitcoinlimitededition128.png` to `/usr/share/pixmaps`

bitcoinlimitededition-qt.protocol (KDE)

