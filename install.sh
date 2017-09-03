#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
   	rm -f /usr/bin/sparky-aptus
	rm -rf /usr/lib/sparky-aptus
	rm -f /usr/lib/sparkycenter/software/sparky-aptus.desktop
	rm -f /usr/share/applications/sparky-aptus.desktop
	rm -f /usr/share/menu/sparky-aptus
	rm -rf /usr/share/icons/sparky/flags
	rm -rf /usr/share/sparky/sparky-aptus
else
	cp bin/sparky-aptus /usr/bin/
	if [ ! -d /usr/lib/sparky-aptus ]; then
		mkdir -p /usr/lib/sparky-aptus
	fi
	cp lib/* /usr/lib/sparky-aptus/
	if [ ! -d /usr/lib/sparkycenter/software ]; then
		mkdir -p /usr/lib/sparkycenter/software
	fi
	cp sparkycenter/sparky-aptus.desktop /usr/lib/sparkycenter/software/
	cp share/sparky-aptus.desktop /usr/share/applications/
	cp share/sparky-aptus /usr/share/menu/
	if [ ! -d /usr/share/icons/sparky/flags/48 ]; then
		mkdir -p /usr/share/icons/sparky/flags/48
	fi
	cp flags/* /usr/share/icons/sparky/flags/48/
	if [ ! -d /usr/share/sparky/sparky-aptus ]; then
		mkdir -p /usr/share/sparky/sparky-aptus
	fi
	cp lang/* /usr/share/sparky/sparky-aptus/
fi
