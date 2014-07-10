#!/bin/bash

if [ -z "$1" ]; then
	echo "Usage: $0 <comment>";
	exit;
fi

cd /Users/maria/Documents/Brokerstudio/Projects/knowhow

git add .
git commit -m "$1"
git push -u origin master

cd -

