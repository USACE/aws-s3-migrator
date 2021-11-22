#!/bin/bash

sleep 20

echo "$(date) - Start"
# https://stackoverflow.com/questions/39296472/how-to-check-if-an-environment-variable-exists-and-get-its-value
if [[ -z "${AWS_S3_ENDPOINT}" ]]; then
    aws s3 sync "s3://${FROM_BUCKET}${FROM_KEY}" "s3://${TO_BUCKET}${TO_KEY}" ${PARAMS}
else
    aws s3 sync --endpoint-url ${AWS_S3_ENDPOINT} "s3://${FROM_BUCKET}${FROM_KEY}" "s3://${TO_BUCKET}${TO_KEY}" ${PARAMS}
fi
echo "$(date) End"
