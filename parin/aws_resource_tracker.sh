#!/bin/bash



##########################################
#
# Author = Parin
#
# Date = 12/28/2023
# 
# Version = v1
#
# This script will report the AWS resources
###########################################


########################################
#
#
#
#  AWS S3
#  AWS EC2
#  AWS Lambda Function
#  AWS IAM Users

set -x

# List S3 buckets
echo "******************** Print List of S3 buckets ******************** " > /home/ubuntu/parin/resourceTracker
aws s3 ls >> /home/ubuntu/parin/resourceTracker




# List EC2 instnances
echo "******************** Print List of EC2 instances ******************** " >> /home/ubuntu/parin/resourceTracker

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> /home/ubuntu/parin/resourceTracker
#aws ec2  describe-instances


# List AWS Lambda
echo "******************** Print List of AWS Lambda functions ********************" >> /home/ubuntu/parin/resourceTracker

aws lambda list-functions >> /home/ubuntu/parin/resourceTracker

# List IMA Users
echo "******************** Print List of IAM Users **********************" >> /home/ubuntu/parin/resourceTracker

aws iam list-users >> /home/ubuntu/parin/resourceTracker
