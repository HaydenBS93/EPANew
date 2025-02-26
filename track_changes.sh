#!/bin/bash

# Navigate to the repository
cd /root/EPANew || exit

# Check if a commit message was provided
if [ "$#" -lt 2 ]; then
    echo "Usage: $0 '<commit title>' '<commit description>'"
    exit 1
fi

# Get commit title and description
commit_title="$1"
commit_description="$2"

# Stage all changes
git add -A

# Commit with formatted message
git commit -m "$commit_title" -m "$commit_description"

# Push changes to GitHub
git push origin master

echo "✅ Changes committed and pushed!"

