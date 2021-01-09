#!/bin/bash

case "$OSTYPE" in
  darwin*)  echo "OSX" ;; 
  linux*)   echo "LINUX" ;;
  *)        echo "$OSTYPE not supported" ;;
esac
