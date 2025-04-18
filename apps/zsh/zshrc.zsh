#
#  ▒███████▒  ██████  ██░ ██  ██▀███   ▄████▄
#  ▒ ▒ ▒ ▄▀░▒██    ▒ ▓██░ ██▒▓██ ▒ ██▒▒██▀ ▀█
#  ░ ▒ ▄▀▒░ ░ ▓██▄   ▒██▀▀██░▓██ ░▄█ ▒▒▓█    ▄
#    ▄▀▒   ░  ▒   ██▒░▓█ ░██ ▒██▀▀█▄  ▒▓▓▄ ▄██▒
#  ▒███████▒▒██████▒▒░▓█▒░██▓░██▓ ▒██▒▒ ▓███▀ ░
#  ░▒▒ ▓░▒░▒▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒░ ▒▓ ░▒▓░░ ░▒ ▒  ░
#  ░░▒ ▒ ░ ▒░ ░▒  ░ ░ ▒ ░▒░ ░  ░▒ ░ ▒░  ░  ▒
#  ░ ░ ░ ░ ░░  ░  ░   ░  ░░ ░  ░░   ░ ░
#    ░ ░          ░   ░  ░  ░   ░     ░ ░
#  ░                                  ░
#
# author: cube <cube@domain.dom>
# code:   https://github.com/niklasnson/dotfiles


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
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

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

# kdesrc-build #################################################################

## Add kdesrc-build to PATH
export PATH="/home/niklasnson/kde/src/kdesrc-build:$PATH"

## Autocomplete for kdesrc-run
function _comp_kdesrc_run
{
  local cur
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"

  # Complete only the first argument
  if [[ $COMP_CWORD != 1 ]]; then
    return 0
  fi

  # Retrieve build modules through kdesrc-run
  # If the exit status indicates failure, set the wordlist empty to avoid
  # unrelated messages.
  local modules
  if ! modules=$(kdesrc-run --list-installed);
  then
      modules=""
  fi

  # Return completions that match the current word
  COMPREPLY=( $(compgen -W "${modules}" -- "$cur") )

  return 0
}

## Register autocomplete function
complete -o nospace -F _comp_kdesrc_run kdesrc-run
################################################################################

