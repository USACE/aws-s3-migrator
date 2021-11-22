#!/bin/sh

BASE_CMD="s3 sync s3://$FROM_BUCKET$FROM_KEY s3://$TO_BUCKET$TO_KEY $PARAMS"

sleep 20

echo "$(date) - Start"
if [[ -z "${AWS_S3_ENDPOINT}"]]; then
    aws --endpoint-url $AWS_S3_ENDPOINT ${BASE_CMD}
else
    aws ${BASE_CMD}

echo "$(date) End"
