The container gave us an error saying that it requires the docker.sock file to launch. As we are keen to run the image, we'll just provide the file:

`docker run -v /var/run/docker.sock:/var/run/docker.sock benhall/cute-kittens`{{execute}}

However, instead of having the behaviour it expected, it launched a privilege sub-container and performs a _ ls /dev_. The _ls_ command outputs all the devices on the host OS. The container has complete access to these devices.

You can see the results of the additional container being launched by running `docker ps -a`{{execute}}

If cute-kittens were more malicious, it could have wiped out our entire host. 