# dotfiles

Mainly inspired by [@ViBiOh](https://github.com/ViBiOh) (2021)

## Installation

```bash
mkdir -p ${HOME}/code/
pushd ${HOME}/code/
git clone https://github.com/eponae/dotfiles.git
./dotfiles/init.sh
popd
```

### Configuration

You can set following environment variables for customizing installation behavior:

- `DOTFILES_NO_NODE="true"` doesn't perform install of `install/node` file (replace `NODE` by any uppercase filename in `install/` dir)

## SSH

```bash
ssh-keygen -t ed25519 -a 100 -C "$(whoami)@$(hostname)" -f ~/.ssh/id_ed25519
```

## GPG

```bash
gpg --full-generate-key
```

## Brew

Fix it with following command when it's broken.

```bash
sudo chown -R "$(whoami)" "$(brew --prefix)"/*
brew doctor
```
