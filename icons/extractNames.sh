#!/bin/bash

printUsage() {
  echo $0 " <directory-with-mdi-icon-svgs>"
}

if [ $# -ne 1 ] 
then
  echo "Error: expected 1 argument"
  printUsage
  exit 1
fi

dir=$1

echo "var allIconNames=["

files=`find ${dir} -name \*.svg | sort`
for f in $files
do
  fName=`basename $f`

  echo "  "${fName%.svg}","
done

echo "]"
