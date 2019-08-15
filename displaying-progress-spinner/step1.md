In this scenario, a long running task has been started in the background. 

To display the user with feedback, a wait script is run in the foreground. The wait script was uploaded as a Asset to Katacoda.

The purpose of the wait script is to wait for certain files to be created. These files are created at certain points within the background script to indicate certain actions have been completed. After 10 seconds, you should see the progress change.

The result is the user knows that actions are being performed and won't attempt to use the scenario until the environment is ready.

The following will output the wait script in a second terminal.
`cat /usr/local/bin/wait.sh`{{execute T2}}

The full script can be found on Github at https://github.com/katacoda/scenario-examples/tree/master/displaying-progress-spinner
