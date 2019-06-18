By default `make` will execute the first target in the file. You can specify a default by creating a target named _default_ which links to an existing target.

By listing multiple targets you can chain their execution together.

For example to build and then launch the tests as default our target would be:
```
default: build test
```
