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

# Step 3: Add Android SDK to PATH
# export ANDROID_HOME=/usr/lib/android-sdk
# export ANDROID_HOME=/Users/rishavj/Library/Android/sdk
#ruby install

# echo "installing rbenv and ruby-build via Homebrew"
# brew install rbenv ruby-build --quiet

# echo "initializing rbenv"
# eval "$(rbenv init -)"

# if [ -f ~/.zshrc ]; then
#   source ~/.zshrc
# elif [ -f ~/.bashrc ]; then
#   source ~/.bashrc
# fi

# export LANG=en_US.UTF-8

# if ! grep -q 'export LANG=en_US.UTF-8' ~/.bashrc; then
#   echo 'export LANG=en_US.UTF-8' >> ~/.bashrc
# fi
# rm -rf vendor/bundle
# rm -f Gemfile.lock

# rbenv install 3.2.2
# rbenv global 3.2.2

# echo "verify ruby version"
# ruby -v
# which ruby
# gem install bundler
# bundle install --path vendor/bundle

# echo "ruby setup complete."
# mkdir -p detox

# cd detox
# YARN_V=$(yarn --version)
# echo "Current architecture: $YARN_V"

echo $(which xcodebuild)

arch -arm64 brew tap wix/brew
arch -arm64 brew install applesimutils


npm install react-native-cli --global
npm install detox-cli --global
npm install "jest@^29" --save-dev
npm install detox --save-dev




npm install





# rm -rf ios/Pods
# rm -rf ios/Podfile.lock

# rm -rf vendor/bundle
# bundle install --path vendor/bundle

# cd ios
# npm install
# npm run podInstall:ios
# pod install

# Step 4: Install and use Node.js version 18
# nvm install 18
# nvm use 18

#either build on your own, or add it here.
# npm run build:ios-release


# Step 5: Navigate to the project directory and install dependencies
    # cd /Users/ltuser/foreman/demo-react-native || {
    #     echo "Error: Directory /home/ltuser/foreman/demo-react-native does not exist."
    #     exit 1
    # }
# npm install
npm start
