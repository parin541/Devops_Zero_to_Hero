#!/bin/bash


#########################################
#
# 
#  Author : Parin
#  Version : V1
#  Date : 11/17/2024
#  
#  The Script will display resouces of aws account
#
#
#
#
########################################

# AWS S3
# AWS EC2
# AWS lambda
# AWS IAM user
#
#

set -x

echo " List of S3 buckets "

aws s3 ls  > resource_tracker.txt

echo " "

echo " List of EC2 instances "

echo ""

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' > resource_tracker.txt

#aws ec2 describe-instances --instance-id i-00da31d2a806a6386

echo " List of Lambda funcations"

aws lambda list-functions >> resource_tracker.txt

echo " "

echo " List of IAM users " 

aws iam list-users | jq '.Users[].UserName' >> resource_tracker.txt

#aws iam list-users

