#!/bin/bash
#
numLines=`wc -l $2 | cut -d ' ' -f 1`
nPrint=$(( $1 * $numLines / 100 ))
# echo $numLines
#
for (( i=1; i<=$nPrint; i++ ));
do
	n=$(( $RANDOM % $numLines ))
	echo $n
	sed "${n}q;d" $2
done
