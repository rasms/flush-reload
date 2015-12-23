#!/bin/bash

CYCLES=$1
KVM=/sys/kernel/mm/ksm/

i="0"

echo "kvm pages_sharing"

while [ $i -lt ${CYCLES} ]
do
	cat /sys/kernel/mm/ksm/pages_sharing
	cat /sys/kernel/mm/ksm/pages_shared
	sleep 1
	i=$[$i+1]

done

exit 0
