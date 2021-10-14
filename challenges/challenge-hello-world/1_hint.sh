#!/bin/bash

# See hint documentation: https://www.katacoda.community/challenges.html#hints

seconds_sofar=$1

# echo "Debug Hint Task 1: $seconds_sofar"

# This hint message will appear between 10-20 seconds elapsed after the task began
if [[ $seconds_sofar -ge 10 &&  $seconds_sofar -lt 20 ]]; then
  echo "Still working on it? I'll show a hint very soon..."
fi

# This hint message will appear 20+ seconds elapsed after the task began
if [ $seconds_sofar -ge 20 ]; then
  echo "**Hint:** Normally, this hint would give help nudge you toward the solution. (As it is, I'm just going to tell you the answer, in case you're new to the command line. The simplest way to create a new file is the command 'touch'. Try typing 'touch bananas.txt' and then hit enter.)"
fi
