echo 'package main' >> app.go
echo '' >> Makefile
echo 'import (' >> app.go
echo '  "fmt"' >> app.go
echo ')' >> app.go
echo '' >> Makefile
echo 'func main() {' >> app.go
echo '  fmt.Fprintf(os.Stdout, "Hello World!")' >> app.go
echo '}' >> app.go

echo 'FROM golang:latest' >> Dockerfile
echo 'RUN mkdir /app' >> Dockerfile
echo 'ADD . /app/' >> Dockerfile
echo 'WORKDIR /app' >> Dockerfile
echo 'RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .' >> Dockerfile
echo 'CMD ["/app/main"]' >> Dockerfile

echo 'FROM scratch' >> Dockerfile-release
echo 'COPY app /' >> Dockerfile-release
echo 'CMD ["/app"]' >> Dockerfile-release

echo 'NAME = go-hello-world' >> Makefile
echo 'INSTANCE = go-hello-world-instance' >> Makefile
echo '.PHONY: default build copy release buildrelease' >> Makefile
echo 'default: buildrelease' >> Makefile
echo '' >> Makefile
echo 'build:' >> Makefile
echo '	docker build -t $(NAME) .' >> Makefile
echo '' >> Makefile
echo 'copy:' >> Makefile
echo '	docker create --name $(INSTANCE) $(NAME)' >> Makefile
echo '	docker cp $(INSTANCE):/app/main $(shell pwd)/app' >> Makefile
echo '	docker rm $(INSTANCE)' >> Makefile
echo '' >> Makefile
echo 'release:' >> Makefile
echo '	docker build -t $(NAME) -f Dockerfile-release .' >> Makefile
echo '' >> Makefile
echo 'buildrelease:' >> Makefile
echo '  build copy release' >> Makefile

docker pull golang:latest
