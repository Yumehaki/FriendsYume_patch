#!/bin/bash
patch -p1 -u -d ".." < "version.patch"
patch -p1 -u -d ".." < "source.patch"