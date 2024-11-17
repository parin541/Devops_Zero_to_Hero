#/!bin/bash


##################################
# Author : Parin
# Date : 12/13/20223
#
# Purpose : This shellscript gives
#            result of node helth
#
##################################

set -x     #Debug Mode
set -e  #exit the script when there is an error
set -o pipefail

#df -h
fffff
echo "*************Print the Memory*******************"
free -g

echo "**************Print the CPU Details*************"
nproc

echo "*************** Process Details ***************"
#top

echo "display process which contains amazon agent"
ps -ef | grep  amazon

echo "******** It display the only process from all curent process whic from amzon"

ps -ef | grep  amazon | awk  -F" " '{print $2}'

echo " fetch 3rd column"
ps -ef | grep  amazon | awk  -F" " '{print $3}'
