#!/bin/bash
clear

echo -e "Preparing the environment ..."

show_progress()
{
  echo -n "Starting"
  local -r pid="${1}"
  local -r delay='0.75'
  local spinstr='\|/-'
  local temp
  printf "    \b\b\b\b"
  until [ -f /tmp/kc-scenario-done ]; do
      temp="${spinstr#?}"
      printf " [%c]  " "${spinstr}"
      spinstr=${temp}${spinstr%"${temp}"}
      sleep "${delay}"
      printf "\b\b\b\b\b\b"
  done
  printf "    \b\b\b\b"
  echo ""
  echo "Configured"
}

show_progress


