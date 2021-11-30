#!/bin/bash

# This script is called by the solver script. Each function should be named solve_task_#, 
# where # is the number of the task each function will solve. The calling solver will call
# the corresponding verify_task_# function after each solver_task_# function completes. 

function solve_task_1() {
  yes | sudo apt update
  yes | sudo apt-get install cowsay
  cowsay "O'Reilly, inspiring the future for more than 40 years" > cowsay.txt
}


function solve_task_2() {
  cat /etc/passwd | column -t -s : > kinder-passwd.txt
}


function solve_task_3() {
  yes | sudo apt update
  yes | sudo apt-get install poppler-utils
  pdftotext streetcar.pdf streetcar.txt
  echo "stella=$(grep -c "Stella" streetcar.txt)" > stella.properties
  echo "stella_exclamation=$(grep -c "Stella!" streetcar.txt)" >> stella.properties
}


function solve_task_4() {
  echo -n "1 2 3 4 5" | xargs -d ' ' -i rm {}

  cat <<EOF > my-xargs.sh
#!/bin/bash
echo -n '1 2 3 4 5' | xargs -d ' ' -i sh -c "touch {}.txt ; echo 'I am {}' > {}.txt"
EOF

  chmod +x my-xargs.sh
  ./my-xargs.sh 
}
