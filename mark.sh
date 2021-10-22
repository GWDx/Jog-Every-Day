#!/bin/bash
fileName=record/$(date +%Y-%m).txt
lastLine=$(tail -n 1 $fileName)
echo $lastLine
writeData=$(date +%Y-%m-%d)

if [ "$lastLine" = "y" ]; then
    exit
fi

echo $writeData >> $fileName

echo 'commit?(y/n)'
read input
if [ "$input" = "y" ]; then
    git commit -m "$writeData"
fi
