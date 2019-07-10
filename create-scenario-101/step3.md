To help create the index.json and scenario structure, Katacoda has developed a command line interactive (CLI).

## Install CLI

Install the CLI with the command `npm i katacoda-cli`{{execute}}.

The commands follow the syntax is
`$ katacoda COMMAND`

After the install has finished, the command can be run via `katacoda --help`{{execute}}.

## Create scenario
For example, to create a new scenario you would run the command `katacoda scenarios:create`{{execute}}. The CLI will prompt you a few questions about friendly URL, scenario title, description, difficulty level, estimated time, number of steps and the layout.

With this information, the CLI will create a folder with the name of the friendly URL introduced and will create inside of that folder the required files for your scenario.git