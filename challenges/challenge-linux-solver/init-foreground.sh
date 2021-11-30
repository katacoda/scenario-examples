#!/bin/bash

FREQUENCY=1                                          # Delay between each check for completion
BACKGROUND_SIGNAL_FILE='/opt/.backgroundfinished'    # File updated by background to indicate completion
BACKGROUND_SAFE_WORD='done'                          # Word in BACKGROUND_SIGNAL_FILE indicating completion
START_MESSAGE='Starting scenario'                    # Message before the progress animation
END_NORMAL_MESSAGE='Challenge ready.'
END_KILLED_MESSAGE='Interupted. This scenario may still be initializing.'

SPINNER_COLOR_NUM=2                # Color to use, unless COLOR_CYCLE=1
SPINNER_COLOR_CYCLE=0              # 1 to rotate colors between each animation
INTERVAL=.25
SPINNER_NORMAL=$(tput sgr0)        # Reset encoding
symbols=("▐⠂       ▌" "▐⠈       ▌" "▐ ⠂      ▌" "▐ ⠠      ▌" "▐  ⡀     ▌" "▐  ⠠     ▌" "▐   ⠂    ▌" "▐   ⠈    ▌" "▐    ⠂   ▌" "▐    ⠠   ▌" "▐     ⡀  ▌" "▐     ⠠  ▌" "▐      ⠂ ▌" "▐      ⠈ ▌" "▐       ⠂▌" "▐       ⠠▌" "▐       ⡀▌" "▐      ⠠ ▌" "▐      ⠂ ▌" "▐     ⠈  ▌" "▐     ⠂  ▌" "▐    ⠠   ▌" "▐    ⡀   ▌" "▐   ⠠    ▌" "▐   ⠂    ▌" "▐  ⠈     ▌" "▐  ⠂     ▌" "▐ ⠠      ▌" "▐ ⡀      ▌" "▐⠠       ▌")

progress_pid=0

cleanup () {
  kill $progress_pid >/dev/null 2>&1
  progress_pid=-1
  end_message=$END_KILLED_MESSAGE
}

show_progress () {  
  while :; do
    tput civis
    for symbol in "${symbols[@]}"; do
      if [ $SPINNER_COLOR_CYCLE -eq 1 ]; then
        if [ $SPINNER_COLOR_NUM -eq 7 ]; then
          SPINNER_COLOR_NUM=1
        else
          SPINNER_COLOR_NUM=$((SPINNER_COLOR_NUM+1))
        fi
      fi
      local color
      color=$(tput setaf ${SPINNER_COLOR_NUM})
      tput sc
      printf "%s%s%s  " "${color}" "${symbol}" "${SPINNER_NORMAL}"
      tput rc
      sleep "${INTERVAL}"
    done
  done
  tput cnorm
  return 0
}

start_progress () {
  show_progress &
  progress_pid=$!

  # Catch any exit and stop progress animation
  trap cleanup SIGINT EXIT INT QUIT TERM

  clear && echo -n "$START_MESSAGE "

  # Periodically check for background signal or user Ctrl-C interuption
  end_message=$END_NORMAL_MESSAGE
  while [[ $progress_pid -ge 0 ]]; do
    grep -i ${BACKGROUND_SAFE_WORD} ${BACKGROUND_SIGNAL_FILE} &> /dev/null
    if [[ "$?" -eq 0 ]]; then
      kill $progress_pid >/dev/null 2>&1
      break
    fi
    sleep ${FREQUENCY}
  done

  stty sane; tput cnorm; clear
  printf "%s\n\n" "${end_message}"
  
  # Pick up any changes during background
  source ~/.bashrc

  # In shell context for student, so set any environment variables for learner here, if needed:
}

clear && start_progress