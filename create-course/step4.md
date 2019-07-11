The CLI can be used to add existing scenarios to a course.

You can list your available scenarios, using this command:
`find ./ -type f | grep index.json`{{execute}}

For example, can add the existing scenario, called *quiz* to the previous created course *test-course* running the following command and follow the steps:
`katacoda courses:add:scenarios`{{execute}}

The CLI will prompt you a few questions about:
- Scenario path: type `./quiz`
- Course path: type `./test-course`

And then select if you want to copy or move the scenario to the course folder.

After that, you can see the scenario was added in your `test-course` opening `katacoda-scenario-examples/test-course-pathway.json`{{open}}

<pre class="file">
{
  "title": "test-course",
  "description": "Example course",
  "courses": [
    {
      "course_id": "quiz",
      "title": "Interactive Quiz",
      "description": "Verify understand and key points by using an interactive quiz"
    }
  ]
</pre>