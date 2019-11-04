Katacoda provides a service that listens to events defined in the scenario and allows to override the default behavior of the platform.
<<<<<<< HEAD
Let's see an example, in this scenario, we use the layout `editor-iframe-split`, and the pages updated in the editor are served by a nodejs and they displayed in the iframe.

Give the app a few minutes to start, and then, click in the reload button on the right. You should see the result of the content of index.html displayed in the iframe.

By default, after the user stops typing, the editor saves the file. The numbers of seconds that the editor waits to save the file can be defined in the scenario with the property `delayToSaveFileAfterStopTypingMilliseconds` in the environment:
=======
Let's see an example, in this scenario, we use the layout `editor-iframe-split`, and the pages updated in the editor are served by a nodejs and display in the iframe.

Give the app a few minutes to start, and then, click in the reload button on the right. You should see the result of the content of index.html displayed in the iframe.

By default, after the user stop typing, the editor saves the file. The numbers of seconds that the editor waits to save the file can be defined in the scenario with the property `delayToSaveFileAfterStopTypingMilliseconds` in the environment:
>>>>>>> master

<pre class="file">
  "environment": {
      ...
      "delayToSaveFileAfterStopTypingMilliseconds": 2000,
  }
</pre>

<<<<<<< HEAD
When a file is saved a progress bar is shown, and the progress bar is hidden when the file was successfully saved.
But for our example, we need to stop to show the progress bar when the gulp task `reload` finished.

To do that, we need to need to send a message to the EventService, when the event happens our environment, and indicating the action we want to perform. The list of all actions / events supported are available in this [link](https://katacoda.com/docs/scenarios/custom-events)

In this example, we know when the gulp `reload` task finish, and after this event, we can call to the EventService to send the `hideprogressbar` message. See `gulpfile.js`{{open}}, function callEventService.
=======
When a file is saved a progress bar is shown, and the progress bar is hidden when the file was successfully saved. But for our example, we need to stop showing the progress bar when the gulp task `reload` finished.

To do that, we need to need to send a message to the EventService, indicating the event we need to raise. The list of all events supported are available in this [link](https://katacoda.com/docs/scenarios/custom-events)

In this example, after the `reload` task, we call to the EventService to send the `reload-finished` message. See `gulpfile.js`{{open}}, function callEventService
>>>>>>> master

## Request to Event Service
The request to the EventService should follow this structure:

`curl -X POST https://environment-events.katacoda.com -d "socket=$1&message=message"`

The socket parameter can be retrieved from the file `/tmp/socket`

<<<<<<< HEAD
## Index.json

In the file index.json we need to specify all the messages we will send from in the environment, for example:

<pre class="file">
"actions": {
  "hideprogressbar": {}
=======
## Mapping event in index.json

In the file index.json the message received in the EventService should be mapped to which event we want to raise, for example:

<pre class="file">
"events": {
  "hideprogressbar": "reload-finished"
>>>>>>> master
}
</pre>
