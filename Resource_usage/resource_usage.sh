{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\csgray\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\fs22 \cf2 \CocoaLigature0 #!/bin/bash\
\
#############################\
#Author : Tanuj\
#Date : 10/06/2025\
#\
# Version : v1\
#\
# This script will report the aws resource usage\
##############################\
\
# aws s3\
# aws ec2\
# aws lambda\
# aws iAM users\
\
# list s3 buckets\
echo "Print list s3 buckets"\
aws s3 ls > resource.sh \
\
#list ec2 instances\
echo "Print list ec2 instances"\
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resource.sh\
\
#list lambda functions\
echo "Print list lambda functions"\
aws lambda list-functions >> resource.sh \
\
#list iAM users\
echo "Print list iAM users"\
aws iam list-users >> resource.sh }