Certain scenarios will require multiple terminal tabs to be running. These can be opened dynamically using the [Markdown Extensions](), but they can also be opened when the scenario starts.

## Terminal Tab

The `index.json` supports the following syntax that allows you to define an additional terminal tab.

<pre>
"environment": {
  "terminals": [{"name": "Terminal 2", "target": "host01"}]
}
</pre>

## Automatically Run Commands

These tabs can automatically run certain commands to help the user understand what is happening. The command below will open a new Terminal tab and automatically run `docker container stats` command.

<pre>
"environment": {
  "terminals": [{"name": "Docker Stats", "command": "docker container stats", "target": "host01"}]
}
</pre>

The can be used for tasks such as watching an event stream, or viewing all the processes running on a system. The command can also run a shell script that perhaps you create and load as an asset. Define the command as a script when a terminal starts:

<pre>
"environment": {
  "terminals": [{"name": "Docker Stats", "command": "scenario-setup-configuration", "target": "host01"}]
}
</pre>

Ensure the script is available in the path:

<pre>
    "assets": {
      "host01": [
        {"file": "scenario-setup-configuration.sh", "target": "/usr/local/bin", "chmod": "+x"}
      ]
    }
</pre>
