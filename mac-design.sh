#!/bin/sh
echo Install all AppStore Apps at first!
# no solution to automate AppStore installs
read -p "Press any key to continue... " -n1 -s
echo  '\n'

echo Input password administrator
sudo -v
while true; do sudo -n true; sleep 60; done 2>/dev/null &
echo  '\n'

echo Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo input PATH homebrew
echo 'export PATH=/opt/homebrew/bin:$PATH' >> ~/.zshrc
source ~/.zshrc

# Apps that require Passwd
brew  install --appdir="/Applications" adobe-acrobat-reader
brew  install --appdir="/Applications" zoomus
brew  install --appdir="/Applications" google-drive-file-stream
brew  install --appdir="/Applications" adobe-creative-cloud

# Core Functionality
echo Install Core Apps
brew  install --appdir="/Applications" rectangle
brew  install --appdir="/Applications" imageoptim
brew  install --appdir="/Applications" handbrake
brew  install --appdir="/Applications" the-unarchiver
brew  install --appdir="/Applications" vlc
brew  install --appdir="/Applications" appcleaner

# Google Slavery
echo Install Google Apps
brew  install --appdir="/Applications" google-chrome
brew  install --appdir="/Applications" google-chat
brew  install --appdir="/Applications" drawio

# cleanup
rm -f -r /Library/Caches/Homebrew/*

echo "IT Arena #AvoWebSolutions"
