#!/usr/bin/env bash

set -e


################################################################################
### Head: kdebiglinux
##
kdebiglinux_config_install () {

	echo "## Config: kdebiglinux"
	echo

	if ! [ -d "$HOME/.kdebiglinux/kunity" ]; then
		echo "Dir Not Exist:" "$HOME/.kdebiglinux/kunity"
		return
	fi

	#echo "mkdir -p $HOME/.kdebiglinux/kunity"
	#mkdir -p "$HOME/.kdebiglinux/kunity"


	echo "install -Dm644 ./kglobalshortcutsrc $HOME/.kdebiglinux/kunity/
/kglobalshortcutsrc"
	install -Dm644 "./kglobalshortcutsrc" "$HOME/.kdebiglinux/kunity/kglobalshortcutsrc"


	echo
}
##
### Tail: kdebiglinux
################################################################################


################################################################################
### Head: main
##
__main__ () {
	kdebiglinux_config_install
}
## start
__main__

##
### Tail: main
################################################################################
