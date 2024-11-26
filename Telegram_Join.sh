#!/bin/bash

# Function to display usage
usage() {
    echo "Usage: $0 <meeting_id> <user_name>"
    echo "Example: $0 123456 'John Doe'"
    exit 1
}

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    usage
fi

# Assign arguments to variables
MEETING_ID=$1
USER_NAME=$2

# Base URL of the meeting platform (replace with actual URL)
BASE_URL="https://t.me/+b2BiPed1kaw0MGVl"

# Create the join link
JOIN_LINK="${BASE_URL}?meeting_id=${MEETING_ID}&user_name=$(echo $USER_NAME | sed 's/ /%20/g')"

# Output the join link
echo "Join Link: $JOIN_LINK"