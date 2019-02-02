#!/bin/sh
echo "??"
#ifstat -n | sed -rn 's/\s*(\S+)\s+(\S+)/"d: \1 u: \2\n"/p' | xargs print
#ifstat | xargs awk '{print $1, $2}' -

#ifstat -n | sed -r 's/\s+/ /g'

#for a in `ifstat`; do

ifstat -i eth0 | while read a; do
    echo $a
done



