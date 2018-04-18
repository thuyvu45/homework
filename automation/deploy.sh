#!/bin/bash

PATH_TO_KEY_FILE=$1
EC2_HOST_PREFIX=$2
EC2_USER=$3
EC2_HOST="${EC2_HOST_PREFIX}.eu-west-1.compute.amazonaws.com"
TODAY_DATE=`date +"%m%d%Y"`
DEPLOY_DIR="/tmp/deploy${TODAY_DATE}$$"

# Connect to the EC2 instance
#ssh -i myKey.pem ec2-user@ec2-54-171-181-0.eu-west-1.compute.amazonaws.com

#create deploy directory
ssh -i $PATH_TO_KEY_FILE $EC2_USER@$EC2_HOST "mkdir ${DEPLOY_DIR}" 

# copy the setup.sh script over
scp -i $PATH_TO_KEY_FILE setup.sh $EC2_USER@$EC2_HOST:$DEPLOY_DIR/.

# excute setup.sh script
ssh -i $PATH_TO_KEY_FILE $EC2_USER@$EC2_HOST "cd ${DEPLOY_DIR};./setup.sh"
