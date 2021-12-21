#!/bin/bash
PATHROOT=github.com/manabuishiii/jgaworkflowspecchecker
VERSION=0.19.1

env GOOS=darwin GOARCH=amd64 go build -o jgaworkflowmanager-mac-${VERSION}   -ldflags "-X ${PATHROOT}/cmd.Version=${VERSION} -X ${PATHROOT}/cmd.Revision=$(git rev-parse --short HEAD)"
env GOOS=linux  GOARCH=amd64 go build -o jgaworkflowmanager-linux-${VERSION} -ldflags "-X ${PATHROOT}/cmd.Version=${VERSION} -X ${PATHROOT}/cmd.Revision=$(git rev-parse --short HEAD)"

