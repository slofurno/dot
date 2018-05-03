#!/bin/sh

unalias gg
gg() {
  git grep -i "$@" -- './*' ':!/vendor/' ':!/docs/' ':!*.lock' ':!*.min.js' ':!*.csv'
}

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

unalias gb
gb() {
  if [[ $# -ne 0 ]]; then
    git branch "$@"
  else
    git branch --sort=-committerdate --color=always | head
  fi
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

