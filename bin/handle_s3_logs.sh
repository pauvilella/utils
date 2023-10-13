#!/bin/bash

# Command to get all the files from an S3 logging bucket from an specific day
aws s3 ls s3://logging-bucket/key-prefix/2023-07-24 | awk '{ print $4 }' > keys.txt

# This leaves the keys of the files that we want to download in a file called keys.txt


# Iterate all the keys in the file and download them from s3 in a specific folder
while read line; do
    aws s3 cp s3://chartboost-s3-logging/chartboostvideo/$line chartboostvideo_yesterday_logs/
done < keys.txt

# Iterate all the files from the folder. Each one contains json obects, we will put them all in a single result file
for file in chartboostvideo_yesterday_logs/*; do
    cat $file >> result.json
done