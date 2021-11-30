#!/bin/bash

# This script is called by the solver utility. Each function should be named 
# verify_task_#, where # is the number of the task each function will solve.
# When a verification fails for a step, the error number returned corresponds 
# to the hint number found in hints.md.

# Delay before first hint and between steps. Zero or positive integer in seconds.
export HINTS_DELAY=15

# Max time for verify blocking commands. Zero or positive integer time units s, m, h.
export VERIFY_TIMEOUT=3s


function verify_task_1() {
  dpkg-query -l | grep cowsay
  if [[ $? -ne 0 ]]
  then 
    return 1
  fi  

  whereis cowsay
  if [[ $? -ne 0 ]]
  then 
    return 2
  fi


  if [[ ! -f 'cowsay.txt' ]]
  then
    return 3
  fi

  cowsay "O'Reilly, inspiring the future for more than 40 years" > '/tmp/expected-cowsay.txt'
  diff '/tmp/expected-cowsay.txt' 'cowsay.txt'
  if [[ $? -ne 0 ]]
  then 
    return 4
  fi  
}


function verify_task_2() {
  if [[ ! -f 'kinder-passwd.txt' ]]
  then
    return 1
  fi

  cat /etc/passwd | column -t -s : > '/tmp/expected-format.txt'
  diff '/tmp/expected-format.txt' 'kinder-passwd.txt'
  if [[ $? -ne 0 ]]
  then 
    return 2
  fi  
}


function verify_task_3() {

  dpkg-query -l | grep poppler-utils

  if [[ $? -ne 0 ]]
  then 
    return 1
  fi  

  whereis pdftotext
  if [[ $? -ne 0 ]]
  then 
    return 2
  fi

  if [[ ! -f 'streetcar.txt' ]]
  then
    return 3
  fi

  grep 'on a street in New Orleans' streetcar.txt
  if [[ $? -ne 0 ]]
  then
    return 4
  fi

  if [[ ! -f 'stella.properties' ]]
  then
    return 5
  fi

  grep 'stella=' stella.properties
  if [[ $? -ne 0 ]]
  then
    return 6
  fi

  grep 'stella_exclamation=' stella.properties
  if [[ $? -ne 0 ]]
  then
    return 7
  fi

  grep 'stella=155' stella.properties
  if [[ $? -ne 0 ]]
  then
    return 8
  fi

  grep 'stella_exclamation=16' stella.properties
  if [[ $? -ne 0 ]]
  then
    return 9
  fi
}


function verify_task_4() {

  if [[ ! -f 'my-xargs.sh' ]]
  then
    return 1
  fi

  if [[ $(grep -c 'xargs' my-xargs.sh) -ne 1 ]]
  then
    return 2
  fi

  echo -n "1 2 3 4 5" | xargs -d ' ' -i ls {}.txt
  if [[ $? -ne 0 ]]
  then
    return 3
  fi

  echo -n "1 2 3 4 5" | xargs -d ' ' -i grep "I am {}" {}.txt
  if [[ $? -ne 0 ]]
  then
    return 4
  fi
}
