# How to setup my Mac guide

## Introduction
This guide will walk through the steps to setup a new Mac for development.

## After first bootup
1. Go throught the initial configuration screens process.
2. Connect to the Wi-Fi network.
3. Log in with my Apple ID.
4. Sync all the things from my iCloud account.

## Once first logged in
1. Remove all the apps I don't want from the Dock and resize it
2. Trackpad settings:
   - Change trackpad speed (up to 3rd most fast speec), and set the clik pression to medium.
   - In the Scroll & Zoom tab, make sure all are checked.
   - In the More Gestures tab: Set the `App Exposé` to `Swipe Down with Three Fingers`.
3. Desktop & Dock settings:
   - Set `Click wallpaper to reveal desktop` to `Only in Stage Manager`.
4. Add Bluetooth to the menu bar.
5. Finder Settings:
   - On the sidebar settings, add the `Home` folder so it will show up in the finder sidebar.
6. Remove heavy apps I don't typically use: GarageBand, iMovie, Numbers, Pages, etc.
7. Open the App Store and install all the updates it prompts.
8. Set the widgets I often use on the notification center:
   - Calendar
   - Weather


## Install most basic Apps
1. Install iTerm2: https://iterm2.com/downloads.html
   - Open it, allow notifications, install required software if it prompts for it, etc.
2. Install Arc Browser: https://arc.net/
   - Log in with my Arc Browser account and turn on Sync. It should sync all my Spaces, folders, etc.
   - Set is as the default browser.
   - Add Favorites (these don't get synced yet, so I have to add them manually).
   - Log in with my Google account, so the Default profile will be already logged in.
   - Turn on all Arc Max feautres excepte the `Tidy Downloads` one.
   - Make the toolbar always be visible: `Shift + Command + D`.
3. Install 1Password 8: https://1password.com/product/mac/
   - Log in with my Family account.
   - Install the extension on Arc Browser, log in in the extension as well.
   - Pin the extension on the toolbar.

## Initial Terminal settings
1. Change the host name of the MacBook:
   - `sudo scutil --set LocalHostName mvp`
   - `sudo scutil --set ComputerName mvp`
   - `sudo scutil --set HostName mvp`
2. Change the key repetition speed:
   - `defaults write -g KeyRepeat -int 1.15`
   - `defaults write -g InitialKeyRepeat -int 20`
3. Install Rosetta: `softwareupdate --install-rosetta`
4. Install XCode Software and Utils: `xcode-select --install`
5. Install Oh My Zsh: `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
6. Do a copy of the original `.zshrc` file just in case: `cp ~/.zshrc ~/.zshrc.original`
7. Install Oh My Zsh plugins:
   - `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
   - `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my- zsh/custom}/plugins/zsh-syntax-highlighting`
8. Install Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

## Update and restard the Mac after the initial setup
1. Go to the `General -> Software Update` section and, on `Automatic Updates`, check the `Install macOS updates` option.
2. Update the Mac to the latest version.
3. Restart the Mac.


Also installed:
- Notion
- Whatsapp
- Rectangle
  - Settings: open on login and check for updates.
Iterm2 settings:
- Closing settings
- Install shell integration
- Make it the default terminal
