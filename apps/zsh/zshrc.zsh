setopt noflowcontrol
setopt no_beep
export ZSH=~/.oh-my-zsh
ZSH_THEME="xiong-chiamiov-plus"
export UPDATE_ZSH_DAYS=13
plugins=(z rbenv git)
source $ZSH/oh-my-zsh.sh
#export ARCHFLAGS="-arch x86_64"
export REPORTTIME=30
export EDITOR="/usr/bin/vim"
#export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
#export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
#export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
#export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

# sourcing of other files
source $HOME/.dotfiles/apps/zsh/aliases.zsh
source $HOME/.dotfiles/apps/zsh/functions.zsh

# add my own dotfiles bin
export PATH=$PATH:$HOME/.dotfiles/bin

export FZF_DEFAULT_OPTS='
  --color fg:#D8DEE9,bg:#2E3440,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C
  --color pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B
'

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
