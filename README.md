# YouTubeDislikes
Archiving YouTube dislikes (and other video information) with YouTube's api!

## How to use?
* Make sure curl, parallel, grep, is installed.
* Add your video ids to ids.txt, or use the default ones from sponsorblock, however I've already archived them.
* Run bash start.sh
* Tell YouTube to fuck off.
## Datasets of ids
* ids.txt - This file contains every video from [SponsorBlock's database](https://sponsor.ajay.app/database)
* https://archive.org/details/archived_annotations_video_ids.csv

## My archived videos
https://archive.org/details/ytdislikes

## Notes
* Make sure you only add the id part of the video url, I have not added support for long links or channels and don't plan to.
* Running lots of downloads at once (50) by default WILL use a lot of bandwidth (Up to 500mbps or so!), aswell as cpu power if you are on a lowend system/vps. Change the amount of downloads in start.sh. However if you are on a unmetered server and don't need to worry about bandwidth charges/cpu usage then you can use 100. This will speed up the download significantly.
