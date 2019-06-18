The format of a Makefile is very simple. You start by defining a name for your target. The target is a collection of commands that need to be performed to complete an action, such as building the Docker image. The example below defines a target called _MyTask_ which executes a script called _mycommand_.

```
MyTask:
    ./mycommand
```

#### Task
Use the editor to create a Makefile with a target called *build* that executes the command `docker build -t benhall/docker-make-example .`

#### Protip
Make requires Makefiles to use tabs for intention. Using spaces will cause the error _Makefile:2: * missing separator. Stop._
