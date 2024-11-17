#!/bin/bash
#####
# Author = Roanak
# Date 16th feb 2024
# Version 1
# This script will report the aws resources usage.
#####



# AWS S3



# AWS Ec2

# AWS Lamda


# list S3 buckets
echo " List of all S3 buckets"
aws s3 ls

echo " List of all ec2 instaces"

# list Ec2 instances
aws ec2 describe-instances

echo " List of all lambda  buckets"

#list lambda
aws lambda list-functions

echo " List of all iam  users"


#list iam users
aws iam list-users
