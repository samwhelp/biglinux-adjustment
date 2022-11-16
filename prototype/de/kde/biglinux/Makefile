
default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Ex:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make kdebiglinux-config-install'
	@echo


.PHONY: help


kdebiglinux-config-install:
	make -C classic kdebiglinux-config-install
	make -C new kdebiglinux-config-install
	make -C modern kdebiglinux-config-install
	make -C kunity kdebiglinux-config-install
	make -C nextg kdebiglinux-config-install
	make -C desk-x kdebiglinux-config-install
.PHONY: kdebiglinux-config-install




desktop-layout-classic:
	make -C classic desktop-layout
.PHONY: desktop-layout-classic


desktop-layout-new:
	make -C new desktop-layout
.PHONY: desktop-layout-new


desktop-layout-modern:
	make -C modern desktop-layout
.PHONY: desktop-layout-modern


desktop-layout-kunity:
	make -C kunity desktop-layout
.PHONY: desktop-layout-kunity


desktop-layout-nextg:
	make -C nextg desktop-layout
.PHONY: desktop-layout-nextg


desktop-layout-desk-x:
	make -C desk-x desktop-layout
.PHONY: desktop-layout-desk-x
