SHELL := bash

.PHONY: all
all: bin dotfiles

.PHONY: bin
bin:
	chmod +x $(CURDIR)/bin/start_pg
	chmod +x $(CURDIR)/bin/stop_pg

.PHONY: dotfiles
dotfiles: 
	ln -fn $(CURDIR)/apps/vscode/settings.json /Users/niklasnson/Library/Application\ Support/Code/User/settings.json
	ln -fn $(CURDIR)/apps/zsh/zshrc.zsh $(HOME)/.zshrc
	ln -fn $(CURDIR)/apps/git/gitconfig $(HOME)/.gitconfig
	ln -fn $(CURDIR)/apps/git/gitignore_global $(HOME)/.gitignore_global
	git config --global core.excludesfile ~/.gitignore_global
	
