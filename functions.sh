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
  go test -v -race ./... "$@"
}

unalias gg
gg() {
  git grep "$@" -- './*' ':!/vendor/' ':!/docs/'
}

unalias gl
gl() {
  git log --oneline
}

gt() {
  git log --oneline --decorate --tags --no-walk
}
