#!/bin/bash

abort()
{
    echo "Error: $1"
    exit 1
}

SRC=./DarkIBeam.tif
DEST=/Applications/Xcode.app/Contents/SharedFrameworks/DVTKit.framework/Versions/A/Resources/DVTIbeamCursor.tiff
DEST_BACKUP=$DEST.org

[ -e $DEST_BACKUP ] && abort "Already installed"

sudo cp $DEST $DEST_BACKUP
sudo cp $SRC $DEST
