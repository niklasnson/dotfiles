# zshrc
if ! [ -f ~/.zshrc ]; then
  ln -fn ~/.dotfiles/apps/zsh/zshrc.zsh ~/.zshrc
fi

# vim
if [ ! -d ~/.vim/ ]; then
  ln -s ~/.dotfiles/apps/vim ~/.vim
fi
if [ ! -f ~/.vimrc ]; then
  ln -fn ~/.dotfiles/apps/vim/vimrc ~/.vimrc
fi

# git
if [ ! -f ~/.gitignore_global ]; then
  git config --global core.excludesfile ~/.gitignore_global
fi

if [ ! -f ~/.gitconfig ]; then
  ln -fn a ~/.dotfiles/spps/git/gitconfig ~/.gitconfig
fi

# tmux
if [ ! -d ~/.tmux/ ]; then
  mkdir ~/.tmux/
fi

if [ ! -d ~/.tmux/plugins/tpm ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

if [ ! -f ~/.tmux.conf ]; then
  ln -fn ~/.dotfiles/apps/tmux/tmux.conf $(HOME)/.tmux.conf
fi
