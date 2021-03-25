#!/bin/bash

printUsage() {
  echo $0 " <directory-with-mdi-icon-svgs> <dst-directory>"
}

if [ $# -ne 2 ] 
then
  echo "Error: expected 2 arguments"
  printUsage
  exit 1
fi

src=$1
dst=$2

files=`find ${src} -name \*.svg | sort`
for fSrc in $files
do
  fName=`basename $fSrc`
  name=${fName%.svg}

  path=`cat $fSrc | sed 's/^.*[<]path[\ ]d[=]\(\".*\"\).*$/\1/'`

  fDst=${dst}/${name}.thtml

  echo $fDst
  
  echo "export template icon extends=dummy super()" > $fDst
  echo "  path(${path})" >> $fDst
done
