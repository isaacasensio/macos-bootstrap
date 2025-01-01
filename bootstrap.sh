#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" &> /dev/null
}

# Check if Homebrew is installed
if command_exists brew; then
    echo "Homebrew is already installed."
else
    echo "Homebrew is not installed. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Verify Homebrew installation
    if command_exists brew; then
        echo "Homebrew installed successfully."
    else
        echo "Failed to install Homebrew. Exiting."
        exit 1
    fi
fi

# Update Homebrew
echo "Updating Homebrew..."
brew update

# Auto hide dock
echo "Auto hiding the macOS dock..."
osascript -e 'tell application "System Events" to set autohide menu bar of dock preferences to true'

# Increase macOS key repeat rate
echo "Increase macOS key repeat rate..."
defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 20
echo "This change requires a reboot"

# Change default folder for screenshots
echo "Changing the default screenshot location from desktop to downloads folder..."
defaults write com.apple.screencapture location "~/Downloads"
