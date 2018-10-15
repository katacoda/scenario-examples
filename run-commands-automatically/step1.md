Commands can be run automatically in the foreground and background when a scenario starts and when a step loads.

The `index.json` file contains the scenario structure. 

Within the `intro` block and for each step, two files can be defined under `courseData` and `code`.

`courseData` defines a script which runs in the background.

`code` defines the commands to run in the foreground.

<pre>
"intro": {
    "text": "intro.md",
    "courseData": "background.sh",
    "code": "foreground.sh",
    "credits": ""
}
</pre>

When the user proceeds to the next step, additional scripts can be run.