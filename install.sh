#!/usr/bin/env sh

set -e

for file in ${HOME}/Documents/dev/dotfiles/symlinks/*; do
  [ -r "${file}" ] && [ -f "${file}" ] && rm -f ${HOME}/.`basename ${file}` && ln -s ${file} ${HOME}/.`basename ${file}`
done

echo 'Host *
    ServerAliveInterval 300
    ServerAliveCountMax 2' > ${HOME}/.ssh/config
