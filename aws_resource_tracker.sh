#!/bin/bash

####################
# Author: nisat-gg
# Date: 16th-aug-24
#
# Version:: v1
#
# This script will report the AWS resource usage
####################

set -x  # Enables debug mode

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls > resourceTracker

# list EC2 Instances
echo "Print list of EC2 Instances"
aws ec2 describe-instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda
echo "Print list of lambda functions"
aws lambda list-functions >> resourceTracker

# list IAM users
echo "Print list of IAM users"
aws iam list-users
