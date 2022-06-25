#!/bin/bash
# add new comment
# add comment from conflict
git checkout develop

git branch|grep -v develop > branch-list

file="branch-list"

for var in $( cat $file )

do

        git branch -D $var

done

git pull
