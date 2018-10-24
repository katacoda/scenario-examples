When the background script is running, sometimes it's required that the user is blocked until the script finishes.

In this case, using files as notifications can be useful. 

For example, the following is a background script that is running:

<pre class="file">
#!/bin/bash

echo "This is a background script with a long running process"

sleep 10

echo "done" >> /opt/.backgroundfinished

</pre>

The foreground script waits for the file to be created. After the file exists, the while loop finishes and the user is allowed to access the terminal.

<pre class="file">
echo "Waiting to complete"; while [ ! -f /opt/.backgroundfinished ] ; do sleep 2; done; echo "Done"
</pre>

This can be improved by displaying a Progress Spinner to the user as described in an additional scenario.