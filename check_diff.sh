#!/bin/bash

numberOfLines=$(< artifacts/diff.txt wc -l)

if [ $numberOfLines != 0 ] ; then
  echo "Unexpected number of lines in diff file. Failing..."
  exit 1
fi