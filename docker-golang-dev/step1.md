```
docker run -it --rm \
--name=godev \
-w /go/src/ \
-v $(pwd):/go/src/ \
golang
```{{execute}}
