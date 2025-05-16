#!/bin/bash

measure_time() {
  echo runnning: "$1"
  start=$(date +%s.%N)
  eval "$1" > /dev/null 2>&1
  end=$(date +%s.%N)
  duration=$(awk "BEGIN {print ($end - $start)}")
  echo "runtime: $duration seconds"
}

bench() {
  url=$1
  dirname=$(basename "${url%.git}")
  rm -rf $dirname
  measure_time "../snap-clone $url"
  rm -rf $dirname
  measure_time "git clone --depth=1 $url"
}

pushd $(dirname "$0")
  bench https://github.com/matyalatte/tuw.git
  bench https://gitlab.gnome.org/GNOME/pango.git
  bench https://github.com/SerenityOS/serenity.git
popd
