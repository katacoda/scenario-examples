#!/bin/bash
clear
while [ ! -f /tmp/wait-script.sh ]
do
  clear
  sleep .2
done

chmod 755 /tmp/wait-script.sh; /tmp/wait-script.sh