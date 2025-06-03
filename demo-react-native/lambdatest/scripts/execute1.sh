#!/bin/bash
set -e
# Step 1: Source nvm and configure the environment
export NVM_DIR="$HOME/.nvm"
if [ -s "$NVM_DIR/nvm.sh" ]; then
    . "$NVM_DIR/nvm.sh" # Load nvm
else
    echo "Error: nvm.sh not found. Ensure nvm was installed correctly."
    exit 1
fi

if [ -s "$NVM_DIR/bash_completion" ]; then
    . "$NVM_DIR/bash_completion" # Load nvm bash completion (optional)
fi

echo $(which xcodebuild)

# Step 3: Add Android SDK to PATH
# export ANDROID_HOME=/usr/lib/android-sdk
# export ANDROID_HOME=~/Downloads/platform-tools/adb
# export ANDROID_HOME=/Users/rishavj/Library/Android/sdk

# Step 4: Install and use Node.js version 18
nvm use 18

# yarn ios
# npm start

# Step 5: Navigate to the project directory and install dependencies
# mkdir -p /home/ltuser/foreman/demo-react-native
cd /Users/ltuser/foreman/demo-react-native || {
    echo "Error: Directory /home/ltuser/foreman/demo-react-native does not exist."
    exit 1
}


# npm start
# yarn start
# npm run podInstall:ios

# /Users/rishavj/.nvm/versions/node/v20.17.0/bin/npm run $1
npm run $1