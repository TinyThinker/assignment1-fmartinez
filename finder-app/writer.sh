#!/bin/bash
if [ ! $# -eq 2 ]
then
  echo "Missing arguments. Expecting 2 parameters but only $# provided"
  exit 1
else
  path_to_file=$1
  text=$2

  if [ ! -d $( dirname $path_to_file ) ]
  then
    mkdir -p $( dirname $path_to_file )
  fi

  echo $text > $path_to_file
  exit 0
fi
