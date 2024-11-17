#!/bin/bash


#############
# Program = Display numbers which are deivide by 3 and 5 , but not devided by 15 between range 1 to 100
#
# Author = Parin Mistry
# 
# Date = 12/25/2023
#
###########

for a in {1..100};
do	
if ([ `expr $a % 3` == 0 ] || [ `expr $a % 5` == 0 ]) && [ `expr $a % 15` != 0 ];
then	
	echo "Number is $a"
fi;
done		
