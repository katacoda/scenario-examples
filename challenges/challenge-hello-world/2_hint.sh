#!/bin/bash

# See hint documentation: https://www.katacoda.community/challenges.html#hints

seconds_sofar=$1

# echo "Debug Hint Task 2: $seconds_sofar"

# This hint message will appear between 10-20 seconds elapsed after the task began.
if [[ $seconds_sofar -ge 10 &&  $seconds_sofar -lt 20 ]]; then
  echo "Still working on it? I'll show a hint very soon..."
fi

# This hint message will appear 20+ seconds elapsed after the task began.
if [ $seconds_sofar -ge 20 ]; then
  echo "**Hint:** This hint could nudge you toward the solution."
fi
