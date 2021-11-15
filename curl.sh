#!/bin/bash
COUNT=0
while :; do
echo "Starting download $1";
curl -o "./videos/$1.json" --location --request POST 'https://www.youtube.com/youtubei/v1/next?key=AIzaSyAO_FJ2SlqU8Q4STEHLGCilw_Y9_11qcW8' --header 'Content-Type: application/json' --data '{
    "context": {
        "client": {
            "hl": "en",
            "gl": "US",
            "clientName": "WEB",
            "clientVersion": "2.20210101"
        }
    },
    "videoId": "'$1'"
}' && if grep -q "dislike this video along with" "./videos/$1.json";then
        echo "the string exists";
        break;
else
        echo "the string does not exist"
        let COUNT++
        if [ $COUNT -ge 3 ]; then
                break;
        else
                echo "Restarting download because dislikes didn't show";
        fi
fi
done