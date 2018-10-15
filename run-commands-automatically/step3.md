When the background script is running, sometimes it's required that the user is blocked until the script finishes.

In this case, using files as notifications can be useful. 

For example, the following is a background script that is running:

<pre class="file">
!#/bin/bash

echo "This is a background script with a long running process"

sleep 10

echo "done" >> /opt/.backgroundfinished

</pre>

The 

This can be improved by displaying a Progress Spinner to the user as described in an additional scenario.