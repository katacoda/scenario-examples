#!/bin/bash

task=$(solver status -q)
solver verify -q "$task" >> "/tmp/solver.out"

verify_error=$?
if [[ $verify_error -eq 0 ]]
then
  solver request_advance_task "$task"
fi
exit $verify_error
