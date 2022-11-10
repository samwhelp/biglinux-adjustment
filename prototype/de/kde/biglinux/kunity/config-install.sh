#!/usr/bin/env bash

set -e


################################################################################
### Head: kde
##
kde_config_install () {
	kde_config_install_kde_keybind
	kde_config_install_kde_wallpaper
}

kde_config_install_kde_keybind () {

	echo
	echo "##"
	echo "## Config: kde_config_install_kde_keybind"
	echo "##"
	echo


	echo "mkdir -p $HOME/.config/"
	mkdir -p "$HOME/.config/"


	echo "install -Dm644 ./config/kde/kglobalshortcutsrc $HOME/.config/kglobalshortcutsrc"
	install -Dm644 "./config/kde/kglobalshortcutsrc" "$HOME/.config/kglobalshortcutsrc"


	echo
}
##
### Tail: kde
################################################################################




################################################################################
### Head: kde / wallpaper
##
kde_config_install_kde_wallpaper () {

	echo
	echo "##"
	echo "## Config: kde_config_install_kde_wallpaper"
	echo "##"
	echo


	##
	## ## Wallpaper
	##

	##
	## https://github.com/samwhelp/note-about-grub/blob/gh-pages/_demo/project/grubrc-profile/grubrc-theme-ctrl/grubrc-theme-ctrl#L719
	##


	local image_file_path='file:///usr/share/wallpapers/dandelion.jpg'
	local value="${image_file_path//\//\\\/}" ## escape all /

	#sed "s/^Image=.*/Image=${value}/g" ~/.config/plasma-org.kde.plasma.desktop-appletsrc

	echo "sed -i 's/^Image=.*/Image=${value}/g' ${HOME}/.config/plasma-org.kde.plasma.desktop-appletsrc"
	sed -i "s/^Image=.*/Image=${value}/g" "${HOME}/.config/plasma-org.kde.plasma.desktop-appletsrc"


	##
	## grep -n '^Image=' ~/.config/plasma-org.kde.plasma.desktop-appletsrc
	##


	echo
}
##
### Tail: kde / wallpaper
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
