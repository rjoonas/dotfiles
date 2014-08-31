#!/bin/bash
# OS X settings, mostly customized from https://github.com/mathiasbynens/dotfiles/blob/master/.osx

echo "This script will customize OS X settings."
sudo -v

desc() {
  echo -e "  \x1B[0;32m ✓\x1B[0m $1"
}

desc "Disable the sound effects on boot"
sudo nvram SystemAudioVolume=" "

desc "Expand save panel by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

desc "Expand print panel by default"
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

desc "Automatically quit printer app once the print jobs complete"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

desc "Disable the “Are you sure you want to open this application?” dialog"
defaults write com.apple.LaunchServices LSQuarantine -bool false

desc "Disable smart dashes"
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

desc "Trackpad: enable tap to click for this user and for the login screen"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

desc "Disable auto-correct"
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

desc "Save screenshots as PNG"
defaults write com.apple.screencapture type -string "png"

desc "Customize screenshot path"
defaults write com.apple.screencapture location -string "${HOME}/Desktop/screenshots"

desc "Disable shadow in screenshots"
defaults write com.apple.screencapture disable-shadow -bool true

desc "Disable dashboard"
defaults write com.apple.dashboard mcx-disabled -boolean YES


### FINDER ###

desc "Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons"
defaults write com.apple.finder QuitMenuItem -bool true

desc "Finder: show hidden files by default"
defaults write com.apple.finder AppleShowAllFiles -bool true

desc "Finder: show all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

desc "Display full POSIX path as Finder window title"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

desc "Disable the warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

desc "Avoid creating .DS_Store files on network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

desc "Automatically open a new Finder window when a volume is mounted"
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

desc "Use list view in all Finder windows by default"
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"



### MESSAGES ###

desc "Disable automatic emoji substitution (i.e. use plain text smileys)"
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticEmojiSubstitutionEnablediMessage" -bool false

desc "Disable smart quotes"
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticQuoteSubstitutionEnabled" -bool false

desc "Disable continuous spell checking"
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "continuousSpellCheckingEnabled" -bool false



### SIZEUP ###

desc "Start SizeUp at login"
defaults write com.irradiatedsoftware.SizeUp StartAtLogin -bool true

desc "Don’t show SizeUp preferences window on next start"
defaults write com.irradiatedsoftware.SizeUp ShowPrefsOnNextStart -bool false



# Kill apps
for app in "Address Book" "Calendar" "Contacts" "cfprefsd" "Dock" "Finder" "Mail" "Messages" "Safari" "SizeUp" "SystemUIServer" "Terminal" "Transmission" "Twitter" "iCal"; do
  killall "${app}" > /dev/null 2>&1
  done
  echo "Done. Note that some of these changes require a logout/restart to take effect."
