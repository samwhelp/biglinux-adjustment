#!/usr/bin/env bash

set -e


################################################################################
### Head: kdebiglinux
##
kdebiglinux_config_install () {

	echo "## Config: kdebiglinux"
	echo

	if ! [ -d "$HOME/.kdebiglinux/new" ]; then
		echo "Dir Not Exist:" "$HOME/.kdebiglinux/new"
		return
	fi

	#echo "mkdir -p $HOME/.kdebiglinux/new"
	#mkdir -p "$HOME/.kdebiglinux/new"


	echo "install -Dm644 ./kglobalshortcutsrc $HOME/.kdebiglinux/new/
/kglobalshortcutsrc"
	install -Dm644 "./kglobalshortcutsrc" "$HOME/.kdebiglinux/new/kglobalshortcutsrc"


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
