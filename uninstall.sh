#!/bin/bash

abort()
{
    echo "Error: $1"
    exit 1
}

DEST=/Applications/Xcode.app/Contents/SharedFrameworks/DVTKit.framework/Versions/A/Resources/DVTIbeamCursor.tiff
DEST_BACKUP=$DEST.org

[ -e $DEST_BACKUP ] || abort "Not installed"

sudo mv $DEST_BACKUP $DEST
