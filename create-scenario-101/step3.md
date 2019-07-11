To help create the index.json and scenario structure, Katacoda has developed a command line interactive (CLI).

## Install CLI

Install the CLI with the command `npm i katacoda-cli --global`{{execute}}.

The commands follow the syntax is
`$ katacoda COMMAND`

After the install has finished, the command can be run via `katacoda --help`{{execute}}.

## Create scenario
For example, to create a new scenario you would run the command `katacoda scenarios:create`{{execute}}. The CLI will prompt you a few questions in order to create your scenario:
- **Friendly URL:** here you will type `test-scenario`. This attribute will determine the name of the folder of your scenario, and the URL to access it, so, should not contain spaces, should be lower case, etc. For example, if your username is *test-username* and your scenario was called *test-scenario* as suggested, the URL to point the scenario in the platform will be https://katacoda.com/test-username/scenarios/test-scenario/
- **Title:** title the scenario
- **Description:** description of the scenario, displayed on the intro screen
- **Difficulty level:** provide users with a sense of the depth of content, displayed on the intro screen
- **Estimated time:** provide users with an estimated time to complete, displayed on the intro screen
- **Number of steps:** the numbers of the steps that the scenario will have. The CLI will create all the template files for all the steps that you specified
- **Image:** it will determine which base software will be available for your scenario. For example, if you need docker, java, go, etc as a pre-requisite. For more information read [katacoda.com/docs/scenarios/environments](https://katacoda.com/docs/scenarios/environments)
- **Layout:** it will determine the disposition of the elements of your scenario. For example, if you want to present only a terminal, or editor + terminal, etc. For more information read [katacoda.com/docs/scenarios/layouts](https://katacoda.com/docs/scenarios/layouts)

With this information, the CLI will create a folder with the name of the ***friendly URL*** introduced and will create inside of that folder the required files for your scenario.

You can check your scenario created with this command:
`ls test-scenario*`{{execute}}