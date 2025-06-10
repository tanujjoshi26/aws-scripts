#!/bin/bash
#############################
#Author : Tanuj
#Date : 10/06/2025
#
# Version : v1
#
# This script will report the aws resource usage
##############################

# aws s3
# aws ec2
# aws lambda
# aws iAM users

# list s3 buckets
echo "Print list s3 buckets"
aws s3 ls > resource.sh 

#list ec2 instances
echo "Print list ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resource.sh

#list lambda functions
echo "Print list lambda functions"
aws lambda list-functions >> resource.sh 

#list iAM users
echo "Print list iAM users"
aws iam list-users >> resource.sh 
