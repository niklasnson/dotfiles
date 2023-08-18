SHELL := bash

.PHONY: all
all: dotfiles

.PHONY: dotfiles
dotfiles:
	ln -fn $(CURDIR)/apps/zsh/zshrc.zsh $(HOME)/.zshrc
	ln -fn $(CURDIR)/apps/git/gitconfig $(HOME)/.gitconfig
	ln -fn $(CURDIR)/apps/git/gitignore_global $(HOME)/.gitignore_global
	ln -s $(CURDIR)/apps/vim $(HOME)/.vim

	ln -fn $(CURDIR)/apps/vim/vimrc $(HOME)/.vimrc
	git config --global core.excludesfile ~/.gitignore_global
