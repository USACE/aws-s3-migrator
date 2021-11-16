#!/bin/sh

sleep 20

echo "$(date) - Start"

aws --endpoint-url $AWS_S3_ENDPOINT s3 sync s3://$FROM_BUCKET$FROM_KEY s3://$TO_BUCKET$TO_KEY $PARAMS

echo "$(date) End"