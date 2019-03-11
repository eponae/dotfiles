#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail
readonly SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

main() {
  local MAC_OS_SSH_CONFIG=""
  if [[ "${IS_MACOS}" = true ]]; then
    MAC_OS_SSH_CONFIG="
  UseKeyChain no"
  fi

  echo "Host *
  PasswordAuthentication no
  ChallengeResponseAuthentication no
  ForwardAgent yes
  HashKnownHosts yes${MAC_OS_SSH_CONFIG}
  ServerAliveInterval 300
  ServerAliveCountMax 2
" > "${HOME}/.ssh/config"
}

main
