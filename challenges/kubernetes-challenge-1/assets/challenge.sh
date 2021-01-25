#!/bin/bash

function hint1() {
  seconds_sofar=$1

  echo "Debug Hint Task 1: $seconds_sofar"

  if [[ $seconds_sofar -ge 5 &&  $seconds_sofar -lt 10 ]]; then
    echo "Keep going, a hint will be shown soon..."
  fi


  if [ $seconds_sofar -ge 10 ]; then
    echo "Hint: try running the command:"
    echo "curl node01:30080"
  fi
}

function kc_start_tasks()
{

  kc_instructions \
      "CTF - RedTeam 1 - Exploit RCE within Application on Kubernetes\n" \
      "The vulnerable application is running on node01:30080\n" \
      "Use cURL to make requests to the application\n" 

  kc_task \
      "Task 1: Write the environment variables from the application environment to a file called \`/root/app-env\`" \
      "Well Done! Anything interesting listed? What about infrastructure settings? It proves that the application is running on Kubernetes." \
      "grep app-env -ie 'kubernetes'" \
      hint1

  kc_task \
      "Task 2: Save the source code of the application's \`app.js\` to \`/root/app.js\`" \
      "Good job! We now have their application code." \
      "grep /root/app.js -ie 'katacoda'"

  echo "You successfully exploited an application by using a known RCE with an insecure Kubernetes deployment"

  echo
  echo "Try being on the Blue Team to lock down the application at https://katacoda.com/"
}