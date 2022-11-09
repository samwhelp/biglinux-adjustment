#!/usr/bin/env bash

set -e


################################################################################
### Head: kdebiglinux
##
kdebiglinux_config_install () {

	echo "## Config: kdebiglinux"
	echo

	if ! [ -d "$HOME/.kdebiglinux/desk-x" ]; then
		echo "Dir Not Exist:" "$HOME/.kdebiglinux/desk-x"
		return
	fi

	#echo "mkdir -p $HOME/.kdebiglinux/desk-x"
	#mkdir -p "$HOME/.kdebiglinux/desk-x"


	echo "install -Dm644 ./config/kde/kglobalshortcutsrc $HOME/.kdebiglinux/desk-x/
/kglobalshortcutsrc"
	install -Dm644 "./config/kde/kglobalshortcutsrc" "$HOME/.kdebiglinux/desk-x/kglobalshortcutsrc"


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
