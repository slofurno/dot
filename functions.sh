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
  go test -v -race ./... $@
}

unalias gg
gg() {
  git grep "$@" -- './*' ':!/vendor/' ':!/docs/'
}

unalias gl
gl() {
  if [[ $@ == "" ]]; then
    git log --oneline
  else
    git log $@
  fi
}

gt() {
  git log --oneline --decorate --tags --no-walk
}

