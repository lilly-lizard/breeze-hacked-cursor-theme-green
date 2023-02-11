CWD := $(shell pwd)

.PHONY: all
all: clean build

.PHONY: install
install: build
	@mkdir -p ~/.local/share/icons
	@cp -r Breeze_Hacked_Green ~/.local/share/icons
	@echo ::: INSTALL :::

.PHONY: build
build: Breeze_Hacked_Green
	@echo ::: BUILD :::

.PHONY: clean
	-@rm -rf build Breeze_Hacked_Green &>/dev/null | true
	@echo ::: CLEAN :::

Breeze_Hacked_Green:
	@./build.sh
