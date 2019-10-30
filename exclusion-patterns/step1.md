Let's create a script that adds a new test folder and creates a file every 1 second. Also this script register the message in a log file.

<pre class="file" data-filename="poc.sh" data-target="replace">
rm -rf test/
mkdir test/
for i in $(seq 1 50000);
do
   echo "Welcome $i times" >> logs
   touch test/$i.cache
   sleep 1
done
</pre>

Add execution permissions to the script
`chmod +x ./poc.sh`{{execute}}

Execute the script
`./poc.sh`{{execute}}

If we see, the numbers of files in the test directory are increasing every 1 second, but, in the editor, we don't see those files.
`watch ls -la ./test`{{execute T2}}

This is accomplished using the property `exclusionPatterns` in the definition of the scenario `index.json`.

<pre class="file">
  "environment": {
      ...
      "exclusionPatterns": ["*test", "./test/*", "./logs"]
  }
</pre>
