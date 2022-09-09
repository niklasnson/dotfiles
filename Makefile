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
	ln -s $(CURDIR)/apps/vim $(HOME)/.vim
	ln -fn $(CURDIR)/apps/vim/vimrc $(HOME)/.vimrc
	git config --global core.excludesfile ~/.gitignore_global
	
	git clone https://github.com/mg979/vim-visual-multi ~/.vim/bundle/vim-visual-multi
	git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
	git clone https://github.com/ctrlpvim/ctrlp ~/.vim/bundle/ctrlp
	git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
	git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
	git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
