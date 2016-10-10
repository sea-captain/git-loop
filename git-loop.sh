#!/bin/bash

BLOCK_SIZE=1M
[[ `uname` == "Darwin" ]] && BLOCK_SIZE=1m

while true; do
	dd if=/dev/urandom bs=$BLOCK_SIZE count=1 of=binary
	git add binary
	DATE=`date -R`
	git commit -m "$DATE"
	git push
done
