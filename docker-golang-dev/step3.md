`docker build -t dev .`{{execute}}

```
docker create --name dev-tmp dev
docker cp dev-tmp:/app/main $(shell pwd)/app
docker rm dev-tmp
```{{execute}}
