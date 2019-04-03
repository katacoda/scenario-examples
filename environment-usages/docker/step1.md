The Docker environment is structured within a Client/Server approach. This aim is to replicate Docker running on a remote server.

As such, certain things that you might be different, such as mounting volumes as they would be mounted on the server, instead of the client.

For example `docker run -it -v /data:/data ubuntu "echo hello > /data/test"`{{execute}} would not create a file in `ls /data/`{{execute}}.

You can access the server via SSH, allowing you to see the data created from the container. For example `ssh root@host01 "ls /data/"`{{execute}}.

If you want to run Docker as a single node with the client/server being on the same instance, then we recommend you use the [Katacoda Ubuntu environment](https://katacoda.com/scenario-examples/environments/ubuntu).