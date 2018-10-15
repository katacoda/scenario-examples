Ensuring that users have successfully completed certain actions before the proceed can be a useful technique to ensure that are paying attention and they won't hit problems later on in the scenario.

When the user clicks Continue, a script is run against the environment.

For the user to be allowed to proceed, the script should output the text "done". For example, the following verify script checks to make sure the user has run `git init`{{execute}} before they can proceed.

<pre>
[ -d /home/scrapbook/tutorial/.git ] && echo "done"
</pre>

If you run `git init`{{execute}}, you will be allowed to continue.

The `index.json` example is:
<pre>
"details": {
    "steps": [
        {
            "title": "Step 1 - Verify",
            "text": "step1.md",
            "verify": "step1-verify.sh"
        }
    ]
}
</pre>