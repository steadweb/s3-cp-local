#!/bin/sh

set -e

mkdir -p ~/.aws
touch ~/.aws/credentials

echo "[default]
aws_access_key_id = ${AWS_ACCESS_KEY_ID}
aws_secret_access_key = ${AWS_SECRET_ACCESS_KEY}" > ~/.aws/credentials

aws s3 cp s3://${AWS_S3_BUCKET}/${SOURCE} --region ${AWS_REGION} ${DESTINATION}

rm -rf ~/.aws

ls -lah
