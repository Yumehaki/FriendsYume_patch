#!/bin/bash
git -C "../" pull -b [VERSION.BEFORE]
patch -p1 -u -d ".." < "version.patch"
patch -p1 -u -d ".." < "source.patch"
cd ".."
NODE_ENV=production yarn install --force
NODE_ENV=production yarn build