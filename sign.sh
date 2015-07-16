#!/bin/bash

GPG=$HOME/flush-reload-master/build_gpg/gnupg-1.4.12/bin/gpg
MESSAGE=message.txt
OUT=out.txt
CYCLES=$1


i="0"



echo "start GPG sign"

while [ $i -lt ${CYCLES} ]
do
	echo $i
	${GPG} --yes --sign ${MESSAGE}

i=$[$i+1]
done

echo "GPG stop"



exit 0
