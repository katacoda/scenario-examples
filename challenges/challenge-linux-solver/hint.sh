#!/bin/bash

# First parameter, $1, is time in seconds since task instructions were presented

task=$(solver status -q)
solver verify "$task" -q > /dev/null 2>&1

# Error code returned from challenge_verify is the hint content id to present
verify_error=$?
solver request_hint "$1" "$task" "$verify_error"
