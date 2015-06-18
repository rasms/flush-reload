#!/bin/bash

GPG=$HOME/flush-reload-master/build_gpg/gnupg-1.4.12/bin/gpg
MESSAGE=message.txt
OUT=out.txt


i="0"



echo "start 100x GPG sign"

while [ $i -lt 100 ]
do
	echo $i
	${GPG} --yes --sign ${MESSAGE}
	sleep 0.1

i=$[$i+1]
done

echo "GPG stop"



exit 0
