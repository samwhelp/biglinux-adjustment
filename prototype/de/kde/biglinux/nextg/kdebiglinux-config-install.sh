#!/usr/bin/env bash

set -e


################################################################################
### Head: kdebiglinux
##
kdebiglinux_config_install () {
	kdebiglinux_config_install_kde_keybind
}

kdebiglinux_config_install_kde_keybind () {

	echo "## Config: kdebiglinux"
	echo

	if ! [ -d "$HOME/.kdebiglinux/nexg" ]; then
		echo "Dir Not Exist:" "$HOME/.kdebiglinux/nexg"
		return
	fi

	#echo "mkdir -p $HOME/.kdebiglinux/nexg"
	#mkdir -p "$HOME/.kdebiglinux/nexg"


	echo "install -Dm644 ./config/kde/kglobalshortcutsrc $HOME/.kdebiglinux/nexg/
/kglobalshortcutsrc"
	install -Dm644 "./config/kde/kglobalshortcutsrc" "$HOME/.kdebiglinux/nexg/kglobalshortcutsrc"


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
