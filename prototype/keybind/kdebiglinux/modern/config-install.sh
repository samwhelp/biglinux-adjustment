#!/usr/bin/env bash

set -e


################################################################################
### Head: kde
##
kde_config_install () {

	kde_global_shortcuts_server_stop
	kde_config_install_kde_keybind
	kde_global_shortcuts_server_start

}
##
### Tail: kde
################################################################################


################################################################################
### Head: kde / keybind
##
kde_config_install_kde_keybind () {

	echo
	echo "##"
	echo "## Config: kde_config_install_kde_keybind"
	echo "##"
	echo


	echo "mkdir -p ${HOME}/.config/"
	mkdir -p "${HOME}/.config/"


	echo "install -Dm644 ./kglobalshortcutsrc ${HOME}/.config/kglobalshortcutsrc"
	install -Dm644 "./kglobalshortcutsrc" "${HOME}/.config/kglobalshortcutsrc"


	echo
}

##
### Tail: kde / keybind
################################################################################


################################################################################
### Head: kde / global shortcuts server
##
kde_global_shortcuts_server_stop () {

	echo
	echo "##"
	echo "## Prepare: kde_global_shortcuts_server_stop"
	echo "##"
	echo


	echo "systemctl --user stop plasma-kglobalaccel.service"
	systemctl --user stop plasma-kglobalaccel.service


	echo
}

kde_global_shortcuts_server_start () {

	echo
	echo "##"
	echo "## Prepare: kde_global_shortcuts_server_start"
	echo "##"
	echo


	echo "systemctl --user start plasma-kglobalaccel.service"
	systemctl --user start plasma-kglobalaccel.service


	echo
}

kde_global_shortcuts_server_restart () {
	#kde_global_shortcuts_server_stop
	#kde_global_shortcuts_server_start


	echo
	echo "##"
	echo "## Prepare: kde_global_shortcuts_server_stop"
	echo "##"
	echo


	echo "systemctl --user resart plasma-kglobalaccel.service"
	systemctl --user resart plasma-kglobalaccel.service


	echo

}
##
### Tail: kde / global shortcuts server
################################################################################


################################################################################
### Head: main
##
__main__ () {
	kde_config_install
}
## start
__main__

##
### Tail: main
################################################################################
