# dotfiles

Mainly inspired by [vibioh dotfiles](https://github.com/ViBiOh/dotfiles)

## Installation

```
mkdir -p ${HOME}/Documents/dev
cd ${HOME}/Documents/dev
git clone git@github.com:eponae/dotfiles.git
./dotfiles/install.sh
```

## SSH

### Generate key and deploy key

```
ssh-keygen -t ed25519
```

## Brew

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## FZF

```
brew install fzf
/usr/local/opt/fzf/install
```

```
brew install tldr
```

## Node

### Binary

[Install latest version](https://nodejs.org/en/download/)

### Node tools

```
npm i -g npm
npm i -g n
sudo n latest
```
