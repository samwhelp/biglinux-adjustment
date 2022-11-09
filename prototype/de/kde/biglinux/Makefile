
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
