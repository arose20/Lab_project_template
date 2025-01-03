#!/bin/bash

# Define the source and destination directories
SOURCE_DIR="/directory/to/template"
DEST_DIR="/new/directory/path/and/name"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Source directory does not exist: $SOURCE_DIR"
    exit 1
fi

# Check if destination directory exists, if not create it
if [ ! -d "$DEST_DIR" ]; then
    echo "Destination directory does not exist. Creating: $DEST_DIR"
    mkdir -p "$DEST_DIR"
    if [ $? -ne 0 ]; then
        echo "Failed to create destination directory: $DEST_DIR"
        exit 1
    fi
fi

# Use rsync to copy the directory structure and files from source to destination without overwriting existing files
rsync -av --ignore-existing --exclude '.git' --exclude '.DS_Store' "$SOURCE_DIR/" "$DEST_DIR/"

if [ $? -eq 0 ]; then
    echo "Files and directories copied from $SOURCE_DIR to $DEST_DIR successfully."
else
    echo "An error occurred during the copy process."
    exit 1
fi
