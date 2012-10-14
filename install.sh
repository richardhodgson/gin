#!/bin/bash

VERSION=0.0.4

mkdir -p /tmp/gin
curl -L "https://github.com/richardhodgson/gin/tarball/v$VERSION" | tar -xz -C /tmp/gin
cp /tmp/gin/richardhodgson-gin-*/gin /usr/local/bin/gin
chmod +x /usr/local/bin/gin
rm -fr /tmp/gin/richardhodgson-gin-*

echo "Gin (version $VERSION) installed."
