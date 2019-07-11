Katacoda has a command line interface which helps to create the required files of courses and scenarios, etc.

You can install the CLI using the following command:
`npm i katacoda-cli --global`{{execute}}

The commands follow the syntax
`$ katacoda COMMAND`

If you need help, to see the available commands, you can run
`katacoda --help`{{execute}}

To create a course, for example, called *test-course*, you can run the following command and follow the steps:

```
cd katacoda-scenario-examples
katacoda courses:create
```{{execute}}

The CLI will prompt you a few questions about:
- **Title:** title of the course, displayed on the intro screen
- **Description:** description of the course, displayed on the intro screen
- **Friendly-url:** here you will type `test-course`. This attribute will determine the name of the folder of your course, and the URL to access it, so, should not contain spaces, should be lower case, etc. For example, if your username is *test-username* and your course was called *test-course* the URL to point the course in the platform will be https://katacoda.com/test-username/courses/test-course/

After that the CLI will create the pathway file and the folder.
`ls test-course*`{{execute}}

You can see the definition of the empty course in `katacoda-scenario-examples/test-course-pathway.json`{{open}}

<pre class="file">
{
  "title": "test-course",
  "description": "Example course",
  "courses": []
}
</pre>