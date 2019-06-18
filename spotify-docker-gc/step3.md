## Container Age

By default, _docker-gc_ will remove containers which have been stopped for an hour. If you require containers to stay around longer then set the environment variable _GRACE_PERIOD_SECONDS_ when launching the container.

`docker run \
   -e GRACE_PERIOD_SECONDS=86400 \
   -v /var/run/docker.sock:/var/run/docker.sock \
   -v /etc:/etc spotify/docker-gc`{{execute}}

## Excluding Containers
If you wish to exclude certain containers from being cleaned up, even when stopped, then add them to a file called _/etc/docker-gc-exclude-containers_. Each line should represent a grep style pattern relating to the container name.

<pre class="file">
*-data
config
</pre>

## Excluding Images
Likewise to above, you can exclude particular images by creating a file called _/etc/docker-gc-exclude_.

