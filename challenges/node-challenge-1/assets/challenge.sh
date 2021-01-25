#!/bin/bash

kc_start_tasks()
{
  echo "Debug Code: JavaScript 1"
  echo 

  echo "Complete the following tasks to progress:"
  echo

  kc_task \
      "Task 1: Fix multiply.js to execute properly" \
      "Well Done! This is a common issue in JavaScript and something that catches out everyone at some point." \
      "cat /root/multiply.js /opt/test.js > /opt/.run.js; node /opt/.run.js;"


  echo "You successfully fixed the application"

}