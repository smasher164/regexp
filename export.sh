#!/bin/sh

FROM="$HOME/src/github.com/smasher164/regexp"
TO="$HOME/go/src/regexp"

cp $FROM/*.go $TO/
cp $FROM/syntax/*.go $TO/syntax/
cp $FROM/internal/dfa/*.go $TO/internal/dfa
cp $FROM/internal/input/*.go $TO/internal/input/

sed -i .bak -e "s/github.com/smasher164\///g" $TO/*.go $TO/internal/dfa/*.go $TO/internal/input/*.go
rm $TO/*.go.bak $TO/internal/dfa/*.go.bak $TO/internal/input/*.go.bak
