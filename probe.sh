#!/bin/bash

GPG=$HOME/flush-reload-master/build_gpg/gnupg-1.4.12/bin/gpg
ADDR=addr/vmw_ubu14.txt
MESSAGE=message.txt
OUT=out.txt
CYCLES=$1

bin/probe ${GPG} ${ADDR} ${OUT} ${CYCLES} &
PROBE_PID=$!


trap "echo 'Received signal'; kill -TERM ${PROBE_PID}" \
    SIGINT SIGQUIT

wait ${PROBE_PID}

python analyze.py out.txt &
ANALYZE_PID=$!

trap "echo 'Killing python'; kill -TERM ${ANALYZE_PID}" SIGINT SIGQUIT
wait ${ANALYZE_PID}

