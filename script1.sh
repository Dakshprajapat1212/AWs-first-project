#!/bin/bash

# --------------------------------------------------------------------
# Date        : 6 May 2025
# Version     : v1.0
# Description : Script to generate a report of AWS resource usage
# Resources   : S3 Buckets, EC2 Instances, Lambda Functions, IAM Users
# --------------------------------------------------------------------

echo "==================================================="
echo " AWS Resource Usage Report - $(date)"
echo "==================================================="

# List S3 Buckets
echo -e "\n S3 Buckets:"
aws s3 ls

# List EC2 Instances
echo -e "\ EC2 Instances:"
aws ec2 describe-instances --query "Reservations[*].Instances[*].{ID:InstanceId,State:State.Name,Type:InstanceType}" --output table

# List Lambda Functions
echo -e "\n Lambda Functions:"
aws lambda list-functions --query "Functions[*].{Name:FunctionName,Runtime:Runtime}" --output table

# List IAM Users
echo -e "\n IAM Users:"
aws iam list-users --query "Users[*].{UserName:UserName,Created:CreateDate}" --output table

echo "==================================================="
echo " Report generated successfully."
echo "==================================================="
