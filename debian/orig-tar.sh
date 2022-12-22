#!/bin/sh -e

VERSION=$2
TAR=../plexus-bsh-factory_$VERSION.orig.tar.gz
DIR=plexus-bsh-factory-$VERSION
TAG=$(echo "plexus-bsh-factory-$VERSION" | sed 's,~\(alpha\|beta\),-\1-,' | sed 's/alpha-7/alpha-7-SNAPSHOT/')

svn export http://svn.codehaus.org/plexus/tags/$TAG/ $DIR
tar -c -z -f $TAR $DIR
rm -rf $DIR ../$TAG

# move to directory 'tarballs'
if [ -r .svn/deb-layout ]; then
  . .svn/deb-layout
  mv $TAR $origDir
  echo "moved $TAR to $origDir"
fi
