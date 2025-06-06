#!/bin/bash

# Enable debugging for troubleshooting (optional)
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


nvm use 18

cd /Users/ltuser/foreman/demo-react-native || {
    echo "Error: Directory /home/ltuser/foreman/demo-react-native does not exist."
    exit 1
}

# test will be discovered from here. 
# example:-  npm run e2e:ios         -- this is picked from discoveryIOS.txt
npm run $1