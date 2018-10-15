Certain scenarios will require multiple terminal tabs to be running. These can be opened dynamically using the [Markdown Extensions](), but they can also be opened when the scenario starts.

## Terminal Tab

The `index.json` supports the following syntax that allows you to define an additional terminal tab.

<pre>
"environment": {
  "terminals": [{"name": "Terminal 2", "target": "host01"}]
}
</pre>

## Automatically Run Commands

These tabs can automatically run certain commands to help the user understand what is happening. The command below will open a new Terminal tab and automatically run `docker stats` command. 

<pre>
"environment": {
  "terminals": [{"name": "Docker Stats", "command": "docker stats", "target": "host01"}]
}
</pre>

The can be used for tasks such as watching a event stream, or viewing all the processes running on a system.