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
## TLDR

```
brew install tldr
```

## Bash

```
brew install bash bash-completion
```

Then change default bash for root
```
sudo -s
echo /usr/local/bin/bash >> /etc/shells
chsh -s /usr/local/bin/bash
exit
```

And also for current user
```
chsh -s /usr/local/bin/bash
exit
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
