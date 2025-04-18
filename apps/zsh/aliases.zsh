#
#
#
#
#   ▄▄▄       ██▓     ██▓ ▄▄▄        ██████ ▓█████   ██████
#  ▒████▄    ▓██▒    ▓██▒▒████▄    ▒██    ▒ ▓█   ▀ ▒██    ▒
#  ▒██  ▀█▄  ▒██░    ▒██▒▒██  ▀█▄  ░ ▓██▄   ▒███   ░ ▓██▄
#  ░██▄▄▄▄██ ▒██░    ░██░░██▄▄▄▄██   ▒   ██▒▒▓█  ▄   ▒   ██▒
#   ▓█   ▓██▒░██████▒░██░ ▓█   ▓██▒▒██████▒▒░▒████▒▒██████▒▒
#   ▒▒   ▓▒█░░ ▒░▓  ░░▓   ▒▒   ▓▒█░▒ ▒▓▒ ▒ ░░░ ▒░ ░▒ ▒▓▒ ▒ ░
#    ▒   ▒▒ ░░ ░ ▒  ░ ▒ ░  ▒   ▒▒ ░░ ░▒  ░ ░ ░ ░  ░░ ░▒  ░ ░
#    ░   ▒     ░ ░    ▒ ░  ░   ▒   ░  ░  ░     ░   ░  ░  ░
#        ░  ░    ░  ░ ░        ░  ░      ░     ░  ░      ░
#
# author: cube <cube@domain.dom>
# code:   https://github.com/niklasnson/dotfiles


alias c="clear"
alias e='$EDITOR'

# Files
alias aliases='$EDITOR ~/.dotfiles/zsh/aliases'
alias zshrc='$EDITOR ~/.zshrc' # Quick access to the ~/.zshrc file

# Unix
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias ll='ls -l'      #long list
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'
alias 'rm=rm -i'
alias 'mv=mv -i'
alias 'cp=cp -i'

# Git
alias ga="git add"
alias gaa="git add --all"
alias gaa="git add --all"
alias gb="git branch"
alias gc="git commit"
alias gca="git commit --amend"
alias gg="grep"
alias ggl="git grep --line-number"
alias gkg="git clean -fdx"
alias gkg="git clean -fdx"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glo="git log --oneline"
alias go="git checkout"
alias gpm="git push origin main"
alias gs="git status"

# Ruby
alias rc='bin/rails console'
alias rdm="bin/rake db:migrate"

# Bundler
alias b="bundle"

# Pretty print the path
alias path='echo $PATH | tr -s ":" "\n"'

# For convenience
alias 'zap=clear; echo -en "\e[3J"'

# Typing errors...
alias 'cd..=cd ..'

# GCC compiler
set CCFLAGS='-std=c++11 -Wpedantic -Wall -Wextra -Werror'
set LDFLAGS='-L/sw/gcc-${GCC4_V}/lib -static-libstdc++'

alias 'g++11=g++ -std=c++11 -Wpedantic -Wall -Wextra -Werror'
alias 'g++filter=gccfilter -a -c g++ ${CCFLAGS} ${LDFLAGS}'
alias 'g++17=g++ -std=c++1z -Wpedantic -Wall -Wextra -Werror'
