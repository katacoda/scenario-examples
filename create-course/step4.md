The CLI can be used to add existing scenarios to a course.

To add an existing scenario, for example, called `quiz`, you can run the following command:
`katacoda courses:create`

The CLI will prompt you a few questions about scenario path and course path and if you want to copy or move the courses.

After that, you can see the scenario was added in your `testCourse` opening `testCourse-pathway.json`{{open}}

<pre class="file">
{
  "title": "testCourse",
  "description": "Example course",
  "courses": [
    {
      "course_id": "quiz",
      "title": "Interactive Quiz",
      "description": "Verify understand and key points by using an interactive quiz"
    }
  ]
</pre>