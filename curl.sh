#!/bin/bash

while :; do
echo "Starting download $1"
curl -o "./videos/$1.json" --location --request POST 'https://www.youtube.com/youtubei/v1/next?key=AIzaSyAO_FJ2SlqU8Q4STEHLGCilw_Y9_11qcW8' --header 'Content-Type: application/json' --data-raw '{
    "context": {
        "client": {
            "hl": "en",
            "gl": "US",
            "clientName": "WEB",
            "clientVersion": "2.20210101"
        }
    },
    "videoId": "9bZkp7q19f0"
}' && if grep -q "dislike this video along with" "./videos/$1.json";then # Check if the json has dislikes, there's about a 10% chance of not being able to see dislikes, the program should simply restart the download.
        echo "the string exists! $1";
        break;
else
        echo "the string does not exist! $1"
fi
done