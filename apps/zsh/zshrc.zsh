setopt noflowcontrol
setopt no_beep
export ZSH=~/.oh-my-zsh
ZSH_THEME="xiong-chiamiov-plus"
export UPDATE_ZSH_DAYS=13
plugins=(z brew git rbenv rake jump)
source $ZSH/oh-my-zsh.sh
export ARCHFLAGS="-arch x86_64"
export REPORTTIME=30
export EDITOR="/usr/local/bin/code"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# sourcing of other files
source $HOME/.dotfiles/apps/zsh/aliases.zsh
source $HOME/.dotfiles/apps/zsh/functions.zsh

# add my own dotfiles bin
export PATH=$PATH:$HOME/.dotfiles/bin

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH="/usr/local/sbin:$PATH"
