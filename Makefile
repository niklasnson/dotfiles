SHELL := bash

.PHONY: all
all: dotfiles

.PHONY: dotfiles
dotfiles:
	$(CURDIR)/setup/links.sh


