#!/usr/bin/env bash

set -e


################################################################################
### Head: kde
##
kde_desktop_layout () {
	kde_desktop_layout_apply_kunity
}
##
### Tail: kde
################################################################################


################################################################################
### Head: kde / layout
##
kde_desktop_layout_apply_kunity () {

	change-plasma-theme --apply kunity

}
##
### Tail: kde / layout
################################################################################


################################################################################
### Head: main
##
__main__ () {
	kde_desktop_layout
}
## start
__main__

##
### Tail: main
################################################################################
