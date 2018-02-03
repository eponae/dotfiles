#!/usr/bin/env sh

set -e

for file in ${HOME}/Documents/dev/dotfiles/symlinks/*; do
  [ -r "${file}" ] && [ -f "${file}" ] && rm -f ${HOME}/.`basename ${file}` && ln -s ${file} ${HOME}/.`basename ${file}`
done

MAX_OS_SSH_CONFIG=""
if [ `uname` == 'Darwin' ]; then
  MAX_OS_SSH_CONFIG="
    UseKeyChain no"
fi

echo "Host *
    PasswordAuthentication no
    ChallengeResponseAuthentication no
    HashKnownHosts yes${MAX_OS_SSH_CONFIG}
    ServerAliveInterval 300
    ServerAliveCountMax 2" >> ${HOME}/.ssh/config
