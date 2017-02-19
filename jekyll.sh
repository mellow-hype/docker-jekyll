#!/bin/bash
if [ $# -lt 2 ]; then
	echo "usage: jekyll.sh <container> <jekyll_commands>"
	exit 0;
else
	docker run -v "$PWD:/jekyll" -it -p 4000:4000 $1 "${@:2}"
fi
