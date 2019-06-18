`make static IMAGE=r.j3ss.co/hello`{{execute}}

`go get github.com/jessfraz/netns`{{execute}}

`./bin/hello --hook prestart:netns /hello &`{{execute}}

`curl -sSL [[HOST_IP]]:8080`{{execute}}

