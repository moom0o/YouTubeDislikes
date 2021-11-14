#!/bin/bash
# Change 50 to amount of download instances you'd like to use.
cat ids.txt | parallel -j 50 'bash curl.sh'