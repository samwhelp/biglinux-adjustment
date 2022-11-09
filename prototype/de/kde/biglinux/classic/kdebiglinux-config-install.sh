#!/usr/bin/env bash

set -e


################################################################################
### Head: kdebiglinux
##
kdebiglinux_config_install () {

	echo "## Config: kdebiglinux"
	echo

	if ! [ -d "$HOME/.kdebiglinux/classic" ]; then
		echo "Dir Not Exist:" "$HOME/.kdebiglinux/classic"
		return
	fi

	#echo "mkdir -p $HOME/.kdebiglinux/classic"
	#mkdir -p "$HOME/.kdebiglinux/classic"


	echo "install -Dm644 ./config/kde/kglobalshortcutsrc $HOME/.kdebiglinux/classic/
/kglobalshortcutsrc"
	install -Dm644 "./config/kde/kglobalshortcutsrc" "$HOME/.kdebiglinux/classic/kglobalshortcutsrc"


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
