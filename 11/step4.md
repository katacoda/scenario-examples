With Docker and volumes you can define permissions to stop users writing files. However, because the Docker access doesn't override the file, these permissions do not protect you from additional containers being launched.

For example, we're defined that our sock is only read-only, but it will still have the same result. 

`docker run -v /var/run/docker.sock:/var/run/docker.sock:ro benhall/cute-kittens`{{execute}}