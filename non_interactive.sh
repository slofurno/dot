
sides() {
  $GOPATH/src/github.com/Getsidecar/developer-tools/bin/sides $@ | jq .
}

justline() {
  head -n$1 | tail -n1
}

sec_usage() {
cat << EOF
usage:
sec get [key]
sec set [key] [value]
sec ls
sec rm [key]
sec init
EOF
}

sec() {
  case $1 in
    get )
      sqlite3 /keybase/private/slofurno/secrets.db "select v from secrets where k = '$2'"
      ;;
    set )
      sqlite3 /keybase/private/slofurno/secrets.db "delete from secrets where k = '$2'; insert into secrets (k,v) values ('$2', '$3')"
      ;;
    init )
      sqlite3 /keybase/private/slofurno/secrets.db "create table secrets (k text, v text)"
      ;;
    ls )
      sqlite3 /keybase/private/slofurno/secrets.db "select k from secrets"
      ;;
    rm )
      sqlite3 /keybase/private/slofurno/secrets.db "delete from secrets where k = '$2'"
      ;;
    * )
      sec_usage
      ;;
  esac
}
