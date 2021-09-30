#!/usr/bin/env bash

function _is_sourced() {
  # https://unix.stackexchange.com/a/215279
  [ "${#FUNCNAME[@]}" -ge 2 ] &&
    [ "${FUNCNAME[0]}" = '_is_sourced' ] &&
    [ "${FUNCNAME[1]}" = 'source' ]
}

function main() {
  local DEBUG="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:${DEBUG_PORT}"
  java -jar $DEBUG app.jar
}

if ! _is_sourced; then
  main "$@"
fi
