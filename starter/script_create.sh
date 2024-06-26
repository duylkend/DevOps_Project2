#!/bin/bash

# # Create key pair
# aws ec2 create-key-pair --key-name "ssh_udacity" --query 'KeyMaterial' --output text > "ssh_udacity.pem" --region us-east-1 --profile admin
# chmod 400 ssh_udacity.pem

# Create network stack
aws cloudformation create-stack --stack-name network --template-body file://network.yml --parameters file://network-parameters.json --region us-east-1 --profile admin

# Wait for network stack to complete
aws cloudformation wait stack-create-complete --stack-name network --profile admin

# Create udagram stack
aws cloudformation create-stack --stack-name udagram --template-body file://udagram.yml --parameters file://udagram-parameters.json --capabilities CAPABILITY_NAMED_IAM --region us-east-1 --profile admin