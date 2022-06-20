#!/bin/sh

# Check that https://nodejs.org/en/download/ exists before continuing
if ! which node > /dev/null; then
    echo "node is missing. Ensure it is installed. It can be downloaded from:"
    echo "https://nodejs.org/en/download/"
    sleep 2
    exit
fi

# Go into build tool directory
cd _tools

# Install dependencies and build missions
eval "npm install --loglevel=error"
eval "npx gulp"

echo ""
sleep 2

# Return to base directory
cd -
exit
