#!/usr/bin/env bash

set -e


################################################################################
### Head: kdebiglinux
##
kdebiglinux_config_install () {

	echo "## Config: kdebiglinux"
	echo

	if ! [ -d "$HOME/.kdebiglinux/modern" ]; then
		echo "Dir Not Exist:" "$HOME/.kdebiglinux/modern"
		return
	fi

	#echo "mkdir -p $HOME/.kdebiglinux/modern"
	#mkdir -p "$HOME/.kdebiglinux/modern"


	echo "install -Dm644 ./kglobalshortcutsrc $HOME/.kdebiglinux/modern/
/kglobalshortcutsrc"
	install -Dm644 "./kglobalshortcutsrc" "$HOME/.kdebiglinux/modern/kglobalshortcutsrc"


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
