Katacoda has a command line interface which helps to create the required files of courses and scenarios, etc.

You can install the CLI using the following command:
`npm i katacoda-cli`{{execute}}

The commands follow the syntax
`$ katacoda COMMAND`

If you need help, to see the available commands, you can run
`katacoda --help`{{execute}}

To create a course, for example, called `testCourse`, you can run the following command:
`katacoda courses:create`{{execute}}

The CLI will prompt you a few questions about title, description, and friendly-url, and after that will create the pathway file and the folder.
`ls testCourse*`{{execute}}

You can see the definition of the empty course in `testCourse-pathway.json`{{open}}

<pre class="file">
{
  "title": "testCourse",
  "description": "Example course",
  "courses": []
}
</pre>