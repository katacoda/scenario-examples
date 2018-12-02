Katacoda supports automatically uploading assets to scenarios. This is designed for configuration and short scripts.

The options are:

1) `file`: The name of the file within the Assets directory.

2) `target`: The directory where the file should be uploaded to.

3) `chmod`: Optional, automatically set a chmod flag after uploading the file.

The following is an example from the `index.json`. 

<pre>
"details": {
    "assets": {
        "host01": [
            {"file": "wait.sh", "target": "/usr/local/bin/", "chmod": "+x"},
            {"file": "deploy.sh", "target": "/usr/local/bin/", "chmod": "+x"}
        ]
    }
},
</pre>

View the uploaded files:

`cat /usr/local/bin/wait.sh`{{execute}}

`cat /usr/local/bin/deploy.sh`{{execute}}

**Note:** There is currently a file limit of 1mb. If the file is greater than 1mb, for performance, we recommend using a CDN and using cURL to download the file.