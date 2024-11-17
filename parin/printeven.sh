#!/bin/bash



for i in {1..95};
do
	if [ `expr $i % 2` == 0 ];
	then
		echo "Even number is  $i"
	fi;
done
