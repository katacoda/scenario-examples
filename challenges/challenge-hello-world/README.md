# Challenge Template

Hi! Thanks for opening this README. I am feeling optimistic, as you must be the sort of person who reads the directions before trying to build something new. We are going to get along great.

This folder is a "Hello, world!" example of a challenge. Consider this a bare minimum, skeletal starting point, which you will customize to suit your own purposes.

Here is a quick lay of the land:

**index.json** --- This is the core definition of any scenario, challenge or otherwise. Note especially:

- `"type": "challenge@0.8"` --- to specify this is a challenge, not a standard scenario
- `"imageid": "ubuntu:2004"` --- This example uses the Ubuntu 20.04 base image, but you should use whatever [base image](https://www.katacoda.community/essentials/environments.html) is most appropriate for your challenge.
- Note that the `index.json` includes a `verify` and `hint` for each step:

```json
	"steps": [
	    {
	        "title": "Task 1: Bananas",
	        "text": "1_task.md",
	        "verify": "1_verify.sh",
	        "hint": "1_hint.sh"
	    },
		…
	]
```

The `verify` points to a shell script. This is run continuously until a success code (exit code 0) is returned.

The `hint` is another shell script that defines what hints to display for that task/step and when (that is, under what conditions).

**.md files** --- The Markdown files are standard Markdown, just as used for standard scenarios. Not all the Katacoda Markdown extensions can be used in this context, however (such as clickable code shortcuts).

**.sh files** --- Bash shell scripts, as described above.

For clarity, we strongly recommend following the naming convention here in this example, whereby files are prefixed with the related task/step number:

```sh
1_hint.sh
1_task.md
1_verify.sh
2_hint.sh
2_task.md
2_verify.sh
```

**SOLUTIONS.md** --- For each task, please provide instructions for the solution. This is _not_ shared with the learner, but is for our internal reference, to help with testing.

Please also review the [challenge documentation here](https://www.katacoda.community/challenges/challenges.html).

_Please reach out with feedback and questions about this example! And thank you for reading the directions._ ♥️
