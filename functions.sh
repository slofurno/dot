#!/bin/sh

goget() {
  go get -t -v ./...
}

govet() {
  go vet $(go list ./... | grep -v /vendor/)
}

godiff() {
  diff -u <(echo -u) <(gofmt -d .)
}

gotest() {
  go test -v -race ./...
}
