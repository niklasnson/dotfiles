
```

    ▓█████▄  ▒█████  ▄▄▄█████▓  █████▒██▓ ██▓    ▓█████   ██████
    ▒██▀ ██▌▒██▒  ██▒▓  ██▒ ▓▒▓██   ▒▓██▒▓██▒    ▓█   ▀ ▒██    ▒
    ░██   █▌▒██░  ██▒▒ ▓██░ ▒░▒████ ░▒██▒▒██░    ▒███   ░ ▓██▄
    ░▓█▄   ▌▒██   ██░░ ▓██▓ ░ ░▓█▒  ░░██░▒██░    ▒▓█  ▄   ▒   ██▒
    ░▒████▓ ░ ████▓▒░  ▒██▒ ░ ░▒█░   ░██░░██████▒░▒████▒▒██████▒▒
     ▒▒▓  ▒ ░ ▒░▒░▒░   ▒ ░░    ▒ ░   ░▓  ░ ▒░▓  ░░░ ▒░ ░▒ ▒▓▒ ▒ ░
     ░ ▒  ▒   ░ ▒ ▒░     ░     ░      ▒ ░░ ░ ▒  ░ ░ ░  ░░ ░▒  ░ ░
     ░ ░  ░ ░ ░ ░ ▒    ░       ░ ░    ▒ ░  ░ ░      ░   ░  ░  ░
       ░        ░ ░                   ░      ░  ░   ░  ░      ░
    ░


                          ░
```


# dotfiles

## About
Here is my current seetings for vim, bash and other tools. Please note that it is designed for my personal preferences and it is not ment as a general preferences.

### Prerequisite

Clone this repo to .dotfiles

Install:
* https://github.com/nordtheme/gnome-terminal

### Installing system

```console
$ sudo ./setup/install.sh
```
This will install applications and tools to the system.

```console
$ make
```
After run make to create the symlinks to user the installed apps.

### Postinstallation.

__Install Plug__
```console
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

__Install oh-my-zshell__
```console
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

__Ruby with Rbenv__
```console
$ rbenv install -l
$ rbenv global 3.1.2
```

#### Scripts
* install.sh - install the system.
* links.sh - setup all folders and links to files. you can run command with: `make run`.
* projects.sh - setup folders for my projects.

#### App Center
Install the following apps in App Center
* VLC
* Evolution
* Telegram


### Updating system

```console
$ sudo ./setup/update.sh
```

# Vim plugins

* [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline) - lean and mean status/tabline
* [vim-airline/vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
* [ctrlpvim/ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim) - full path fuzzy file, buffer, mru, tag, ... finder
* [vim-ruby/vim-ruby](https://github.com/vim-ruby/vim-ruby) - vim's runtime files for ruby support
* [scrooloose/nerdtree](https://github.com/preservim/nerdtree) - file explorer
* [ddollar/nerdcommenter](https://github.com/preservim/nerdcommenter) - comment functions so powerful—no comment necessary
* [tpope/vim-rails](https://github.com/tpope/vim-rails) - massive (in a good way) Vim plugin for editing Ruby on Rails applications.
* [preservim/tagbar]()
* [junegunn/fzf]()
* [tpope/vim-fugitive]()
* [tpope/vim-ragtag]()
* [tpope/vim-surround]()
* [vim-test/vim-test]()
* [tpope/vim-commentary]()

