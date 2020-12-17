#!/bin/bash
EXTENSION_DIR=/opt/.katacodacode/extensions/humao.rest-client-0.24.3
while ! [ -d "$EXTENSION_DIR" ];
do
  clear;
  echo 'Installing VS Code extensions, please wait before opening the IDE'.
  sleep 1
done
clear
: VS Code extensions installed, now you can open the IDE