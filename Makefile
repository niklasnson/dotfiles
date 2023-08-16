SHELL := bash

.PHONY: all
all: bin dotfiles

.PHONY: bin
bin:
	chmod +x $(CURDIR)/bin/start_pg
	chmod +x $(CURDIR)/bin/stop_pg

.PHONY: dotfiles
dotfiles:
	ln -fn $(CURDIR)/apps/zsh/zshrc.zsh $(HOME)/.zshrc
	ln -fn $(CURDIR)/apps/git/gitconfig $(HOME)/.gitconfig
	ln -fn $(CURDIR)/apps/git/gitignore_global $(HOME)/.gitignore_global
	ln -s $(CURDIR)/apps/vim $(HOME)/.vim
	ln -fn $(CURDIR)/apps/vim/vimrc $(HOME)/.vimrc
	git config --global core.excludesfile ~/.gitignore_global
	sudo apt install fonts-firacode
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
