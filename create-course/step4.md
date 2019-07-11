The CLI can be used to add existing scenarios to a course.

You can list your available scenarios, using this command:
`find ./ -type f | grep index.json`

For example, can add the existing scenario, called *quiz* to the previous created course *test-course* running the following command and follow the steps:
`katacoda courses:add:scenarios`{{execute}}

The CLI will prompt you a few questions about scenario path and course path and if you want to copy or move the courses.

After that, you can see the scenario was added in your `test-course` opening `test-course-pathway.json`{{open}}

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