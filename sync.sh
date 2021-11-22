#!/bin/bash

BASE_CMD="s3 sync s3://$FROM_BUCKET$FROM_KEY s3://$TO_BUCKET$TO_KEY $PARAMS"

sleep 20

echo "$(date) - Start"
# https://stackoverflow.com/questions/39296472/how-to-check-if-an-environment-variable-exists-and-get-its-value
if [[ -z "${AWS_S3_ENDPOINT}" ]]; then
    "aws ${BASE_CMD}"
else
    "aws --endpoint-url $AWS_S3_ENDPOINT ${BASE_CMD}"
fi

echo "$(date) End"
