#!/usr/bin/env bash

set -e


################################################################################
### Head: kdebiglinux
##
kdebiglinux_config_install () {
	kdebiglinux_config_install_kde_keybind
	kdebiglinux_config_install_kde_wallpaper
}

kdebiglinux_config_install_kde_keybind () {

	echo
	echo "##"
	echo "## Config: kdebiglinux_config_install_kde_keybind"
	echo "##"
	echo


	if ! [ -d "$HOME/.kdebiglinux/kunity" ]; then
		echo "Dir Not Exist:" "$HOME/.kdebiglinux/kunity"
		return
	fi


	#echo "mkdir -p $HOME/.kdebiglinux/kunity"
	#mkdir -p "$HOME/.kdebiglinux/kunity"


	echo "install -Dm644 ./config/kde/kglobalshortcutsrc $HOME/.kdebiglinux/kunity/
/kglobalshortcutsrc"
	install -Dm644 "./config/kde/kglobalshortcutsrc" "$HOME/.kdebiglinux/kunity/kglobalshortcutsrc"


	echo
}
##
### Tail: kdebiglinux
################################################################################


################################################################################
### Head: kdebiglinux / wallpaper
##
kdebiglinux_config_install_kde_wallpaper () {

	echo
	echo "##"
	echo "## Config: kdebiglinux_config_install_kde_wallpaper"
	echo "##"
	echo


	if ! [ -d "$HOME/.kdebiglinux/kunity" ]; then
		echo "Dir Not Exist:" "$HOME/.kdebiglinux/kunity"
		return
	fi


	##
	## ## Wallpaper
	##

	##
	## https://github.com/samwhelp/note-about-grub/blob/gh-pages/_demo/project/grubrc-profile/grubrc-theme-ctrl/grubrc-theme-ctrl#L719
	##


	local image_file_path='file:///usr/share/wallpapers/dandelion.jpg'
	local value="${image_file_path//\//\\\/}" ## escape all /

	#sed "s/^Image=.*/Image=${value}/g" ~/.kdebiglinux/kunity/plasma-org.kde.plasma.desktop-appletsrc

	echo "sed -i 's/^Image=.*/Image=${value}/g' ${HOME}/.kdebiglinux/kunity/plasma-org.kde.plasma.desktop-appletsrc"
	sed -i "s/^Image=.*/Image=${value}/g" "${HOME}/.kdebiglinux/kunity/plasma-org.kde.plasma.desktop-appletsrc"


	##
	## grep -n '^Image=' ~/.kdebiglinux/kunity/plasma-org.kde.plasma.desktop-appletsrc
	##


	echo
}
##
### Tail: kdebiglinux / wallpaper
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
