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

unalias gb
gb () {
  git branch -a --sort=-committerdate --color=always | head -n20
}

unalias gg
gg() {
  git grep -i "$@" -- './*' ':!/vendor/' ':!/docs/' ':!*.lock' ':!*.min.js' ':!*.csv'
}

unalias gl
gl() {
  #git log --graph --decorate --oneline --first-parent --all --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'
  git log --graph --decorate --oneline --first-parent --all --format=format:'%C(auto)%h (%ar) %s - %an %d'
}

gt() {
  git log --oneline --decorate --tags --no-walk
}

gitlog() {
  if [[ $@ == "" ]]; then
    git log --oneline
  else
    git log $@
  fi
}

