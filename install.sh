#!/bin/bash

VERSION=0.0.2

mkdir -p /tmp/gin
curl -L "https://github.com/richardhodgson/gin/tarball/v$VERSION" | tar -xz -C /tmp/gin
cp /tmp/gin/richardhodgson-gin-*/gin /usr/local/bin
rm -fr /tmp/gin/richardhodgson-gin-*

echo -e "Gin (version $VERSION) installed."
