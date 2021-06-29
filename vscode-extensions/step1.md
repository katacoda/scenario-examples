To install a VSCode extension execute the following in a background script:

```
cd /tmp && apt install bsdtar -y
curl -L https://marketplace.visualstudio.com/_apis/public/gallery/publishers/humao/vsextensions/rest-client/0.24.3/vspackage | bsdtar -xvf - extension
mv extension /opt/.katacodacode/extensions/humao.rest-client-0.24.3
```

The name of the directory for the extension should use the same pattern that when the extension is installed manually `<publisher>.<name>-<releaseversion>`.

See the [source code](https://github.com/katacoda/scenario-examples/tree/master/vscode-extensions) of this example.