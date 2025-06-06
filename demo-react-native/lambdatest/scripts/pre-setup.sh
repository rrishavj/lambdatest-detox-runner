#!/bin/bash

# Enable debugging for troubleshooting (optional)
set -e

# Step 1: Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# Step 2: Source nvm and configure the environment
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

# Step 3: Set ruby 3.2.2 as global version
eval "$(rbenv init -)"
echo "verify ruby version"
ruby -v
rbenv global 3.2.2
gem install bundler:2.6.8   # Ensure bundler is installed, latest version preferred
bundle install --path vendor/bundle
export LANG=en_US.UTF-8
npm install --save-dev @react-native-community/cli

# already installed on HyperExecute Mac/Simulator Hosts
    # arch -arm64 brew tap wix/brew
    # arch -arm64 env HOMEBREW_NO_AUTO_UPDATE=1 brew install applesimutils
    # npm install react-native-cli --global
    # npm install detox-cli --global
    # npm install "jest@^29" --save-dev
    # npm install detox --save-dev
    # npm install --save-dev @react-native-community/cli


# Step 4: troubleshoot locale issues
# Clean DerivedData and set lang for 
    # rm -rf ~/Library/Developer/Xcode/DerivedData
# WARNING: CocoaPods requires your terminal to be using UTF-8 encoding.
    # export LANG=en_US.UTF-8

npm install
npm run podInstall:ios

# This command can be used to build the iOS app on a simulator.
# npx react-native run-ios 
# npx expo run:ios


Step 5: Navigate to the project directory and install dependencies
    cd /Users/ltuser/foreman/demo-react-native || {
        echo "Error: Directory /home/ltuser/foreman/demo-react-native does not exist."
        exit 1
    }

