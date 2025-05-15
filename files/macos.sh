#!/usr/bin/env bash

# https://macos-defaults.com/

# Dock > Minimize windows using: Scale effect
defaults write com.apple.dock mineffect -string "scale"

# Dock > Minimize windows into application icon
defaults write com.apple.dock minimize-to-application -bool true

# Dock > Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Dock > Automatically hide and show the Dock (duration)
defaults write com.apple.dock autohide-time-modifier -float 0.4

# Dock > Automatically hide and show the Dock (delay)
defaults write com.apple.dock autohide-delay -float 0

# Show recent applications in Dock
defaults write com.apple.dock "show-recents" -bool false

# Show all file extensions
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"

# Show hidden files
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"

# Show path bar
defaults write com.apple.finder "ShowPathbar" -bool "true"

# Show status bar
defaults write com.apple.finder "ShowStatusBar" -bool "true"

# List view
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv"

# Keep folders on top
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"

# Empty bin items after 30 days
defaults write com.apple.finder "FXRemoveOldTrashItems" -bool "true"

# Click Wallpaper to show desktop
defaults write com.apple.WindowManager EnableStandardClickToShowDesktop -int 0

# Tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true

# Disable "natural" scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
