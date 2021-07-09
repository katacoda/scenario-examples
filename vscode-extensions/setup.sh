#!/bin/bash
echo 'debconf debconf/frontend select Noninteractive' | sudo debconf-set-selections
cd /tmp && apt-get update -y && apt install libarchive-tools -y # install bsdtar
curl -L https://marketplace.visualstudio.com/_apis/public/gallery/publishers/humao/vsextensions/rest-client/0.24.3/vspackage | bsdtar -xvf - extension
mv extension /opt/.katacodacode/extensions/humao.rest-client-0.24.3