cd /tmp && apt-get update -y && apt install libarchive-tools -y # install bsdtar
curl -L https://marketplace.visualstudio.com/_apis/public/gallery/publishers/ms-python/vsextensions/python/2020.5.86806/vspackage | bsdtar -xvf - extension
# The name of the directory for the extension should use the same pattern that when the extension is installed manually <publisher>.<name>-<releaseversion>.
mv extension /opt/.katacodacode/extensions/ms-python.python-2020.5.86806