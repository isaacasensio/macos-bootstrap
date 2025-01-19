#!/bin/bash

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

echo "Finder: show all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "show hidden files by default"
defaults write com.apple.Finder AppleShowAllFiles -bool false

echo "Disable window animations and Get Info animations in Finder"
defaults write com.apple.finder DisableAllAnimations -bool true

echo "Show Path bar in Finder"
defaults write com.apple.finder ShowPathbar -bool true

echo "Show Status bar in Finder"
defaults write com.apple.finder ShowStatusBar -bool true

echo "Don’t animate opening applications from the Dock"
defaults write com.apple.dock launchanim -bool false

echo "Disable opening and closing window animations"
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false