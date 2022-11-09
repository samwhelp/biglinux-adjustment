#!/usr/bin/env bash

set -e


################################################################################
### Head: kde
##
kde_config_install () {
	kde_config_install_kde_keybind
	kde_config_install_kde_launcher
}

kde_config_install_kde_keybind () {

	echo
	echo "##"
	echo "## Config: kde_config_install_kde_keybind"
	echo "##"
	echo

	echo "mkdir -p ${HOME}/.config/"
	mkdir -p "${HOME}/.config/"


	echo "install -Dm644 ./config/kde/kglobalshortcutsrc ${HOME}/.config/kglobalshortcutsrc"
	install -Dm644 "./config/kde/kglobalshortcutsrc" "${HOME}/.config/kglobalshortcutsrc"


	echo
}

kde_config_install_kde_launcher () {

	echo
	echo "##"
	echo "## Config: kde_config_install_kde_launcher"
	echo "##"
	echo


	echo "sed -i 's/^launchers=.*/launchers=applications:pcmanfm-qt.desktop?iconData=iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAA7EAAAOxAGVKw4bAAACyElEQVRoge2Yv08TYRjHv8_bg9LSKIjBgEBIqoNhMBo3HXXRuKiDqy5uLMTZ-AfgYEyMizpq4uTm5GAYNSHRCTUQKAWiTSCl5Xr3Pl-Ha6XpD6il7TncZ3jv8t774_t973nukgeIiIiICBNpZdD4fGaSRlItLajMr8-dXj2arNY51MD4fOYCjTzQ4o5jfy0nDhobOzldNIljvlF9npmbWOyczObUGTjzdCmet6mbAk4BAMhxiKTs1o9kaXXx-EGL9U-e346NpgsAdoXc6KRQNWY5ZfLvv8-edav7ndqBBZu8JODVvx0SeIyNpguJQFwrDFIkfQS9dQiZLtjkOoCF6v46AyKxYVIBAHdnEhOXJ-Jj0lKmdB4SWFhzs2--Fdcq2mrH1BmocPFU3_H5a0PXpcVE7xa3ziW4lPPffs5621QIHtHgsWjleVMD08PO4FHE7-ypP_thm5u7tq-d-SThK7To09sp8UbcwPNUb48NZSlPMjlr7Z3Nh1NfTbsCD-PFl3xxo03xh0HICWPMPQDoioGfOX_v44qX7GbsiZE4UA6hqWfZGb-k7ygyAqoMxMR8WnH7r7zeKiUd4xiB-cdEHuiC5oYYAPBc3idkpFebdhIDAGIYD1tIu3QtiXtFZCBsIgNhExkIm8hA2EQGwiYyEDaRgbA51ACr2p4iQoiQDMorzWQ0rEqQgAJUBZWgCAj2rr7CoKESgf7g2vAY6wyQAAFaS3oGaoxah8KeFrcIEISn1JKl2rIRlA-yGqd2IgRUUkoq1liIBdUIRKACdP8t7EeL0CrpWtiSVVXdj6Rq6t8AAKtgCVQlPNenMSLS8_ocCSXpq6ilqAJsZKE-BwhQQEuhWkpw9AylvBjEP1Gdx7U0Li0SoLASipBQPkM1mzZR4AAAVdy6EGHD2_8GKl2g_B_oi8tLAX-HK6l1BMyp6quwdUREREQAfwCUiUvlnTilOAAAAABJRU5ErkJggg%3D%3D,applications:sublime_text.desktop,applications:firefox.desktop,applications:sakura.desktop,applications:bigcontrolcenter.desktop,applications:big-store.desktop,applications:org.gnome.Calculator.desktop/g' ${HOME}/.config/plasma-org.kde.plasma.desktop-appletsrc"
	sed -i "s/^launchers=.*/launchers=applications:pcmanfm-qt.desktop?iconData=iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAA7EAAAOxAGVKw4bAAACyElEQVRoge2Yv08TYRjHv8_bg9LSKIjBgEBIqoNhMBo3HXXRuKiDqy5uLMTZ-AfgYEyMizpq4uTm5GAYNSHRCTUQKAWiTSCl5Xr3Pl-Ha6XpD6il7TncZ3jv8t774_t973nukgeIiIiICBNpZdD4fGaSRlItLajMr8-dXj2arNY51MD4fOYCjTzQ4o5jfy0nDhobOzldNIljvlF9npmbWOyczObUGTjzdCmet6mbAk4BAMhxiKTs1o9kaXXx-EGL9U-e346NpgsAdoXc6KRQNWY5ZfLvv8-edav7ndqBBZu8JODVvx0SeIyNpguJQFwrDFIkfQS9dQiZLtjkOoCF6v46AyKxYVIBAHdnEhOXJ-Jj0lKmdB4SWFhzs2--Fdcq2mrH1BmocPFU3_H5a0PXpcVE7xa3ziW4lPPffs5621QIHtHgsWjleVMD08PO4FHE7-ypP_thm5u7tq-d-SThK7To09sp8UbcwPNUb48NZSlPMjlr7Z3Nh1NfTbsCD-PFl3xxo03xh0HICWPMPQDoioGfOX_v44qX7GbsiZE4UA6hqWfZGb-k7ygyAqoMxMR8WnH7r7zeKiUd4xiB-cdEHuiC5oYYAPBc3idkpFebdhIDAGIYD1tIu3QtiXtFZCBsIgNhExkIm8hA2EQGwiYyEDaRgbA51ACr2p4iQoiQDMorzWQ0rEqQgAJUBZWgCAj2rr7CoKESgf7g2vAY6wyQAAFaS3oGaoxah8KeFrcIEISn1JKl2rIRlA-yGqd2IgRUUkoq1liIBdUIRKACdP8t7EeL0CrpWtiSVVXdj6Rq6t8AAKtgCVQlPNenMSLS8_ocCSXpq6ilqAJsZKE-BwhQQEuhWkpw9AylvBjEP1Gdx7U0Li0SoLASipBQPkM1mzZR4AAAVdy6EGHD2_8GKl2g_B_oi8tLAX-HK6l1BMyp6quwdUREREQAfwCUiUvlnTilOAAAAABJRU5ErkJggg%3D%3D,applications:sublime_text.desktop,applications:firefox.desktop,applications:sakura.desktop,applications:bigcontrolcenter.desktop,applications:big-store.desktop,applications:org.gnome.Calculator.desktop/g" "${HOME}/.config/plasma-org.kde.plasma.desktop-appletsrc"

	echo
}
##
## launchers=preferred://browser,preferred://filemanager,applications:org.gnome.Calculator.desktop,file:///usr/share/applications/libreoffice-writer.desktop,applications:org.kde.kate.desktop,applications:bigtts.desktop
##

##
### Tail: kde
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
