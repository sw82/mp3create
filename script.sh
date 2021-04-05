#!/bin/zsh

rm -f files.txt

for i in *.mp3; do
    # Will print */ if no directories are available
   echo "file '$i'" >> files.txt
done

ffmpeg -f concat -safe 0 -i files.txt -c copy output.mp3