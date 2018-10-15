By having scripts run for each step it's possible to simulate activities and actions under the covers. Such as modifying settings or causing additional situations for the user to complete.

The syntax is the same as when defining scripts for intro.

<pre>
{
    "title": "Step 2",
    "courseData": "step2-background.sh",
    "code": "step2-foreground.sh",
    "text": "step2.md"
}
</pre>

The next step will explain how to handle the user having to wait for a task to complete.