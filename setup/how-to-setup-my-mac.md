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
   - Go to settings, on the `General` -> `Closing` tab, check the `Quit when all windows are closed` option and uncheck all the other ones.
   - Import profile json from this repo [file](./pauvilella_iterm2_profile.json), set it as the default profile and remove the other one.
   - Set it as the default terminal: `iTerm2 -> Make iTerm2 Default Term`.
   - Install the shell integration: `iTerm2 -> Install Shell Integration`.
   - Open a window, we will create a windown arrangement to set as default. Place it with the size and location in the screen where I will want the new windows I open with iTerm2 to be placed. Once we have the position and size correctly set, go to the menu `Window` -> `Save Window Arrangement` and save it with the name *Pau Vilella Arrangement*. I will be set as default since it is the only one. Finally, go to settings, on `General` -> `Startup` tab, and set the `Open Default Window Arrangement` option (leave `Open profiles window` unchecked).
   -
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
9. Download the `.zshrc` file from this repo, located here: [file](./zshrc) and make it our default `.zshrc` file: `cat Downloads/zshrc > ~/.zshrc`

## Update and restard the Mac after the initial setup
1. Go to the `General -> Software Update` section and, on `Automatic Updates`, check the `Install macOS updates` option.
2. Update the Mac to the latest version.
3. Restart the Mac.

## Install go
1. Go to https://go.dev/dl/ and download the package for MacOS ARM64.
2. Install gotests: `go install github.com/cweill/gotests/gotests@latest`
3. Install golangci-lint: `curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.56.2`

## Install nvm
1. Install nvm: `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash`
2. Install the latest LTS version of node or the one needed, in my case it is `v20`: `nvm install v20`
3. Then set the alias default: `nvm alias default 20`

## Install the following apps with Homebrew
1. Update brew: `brew update`
2. Add the following taps:
   - `brew tap mongodb/brew`
3. Brew install (`brew install`) the following apps:
   - `act`
   - `argocd`
   - `--cask aws-vault`
   - `bat`
   - `dive`
   - `doctl`
   - `ffmpeg`
   - `fzf`
   - `gh`
   - `gnupg`
   - `helm`
   - `htop`
   - `httping`
   - `ipcalc`
   - `jq`
   - `kubectx`
   - `mongodb-database-tools`
   - `mongosh`
   - `neovim`
   - `pinentry-mac`
   - `poetry`
   - `pre-commit`
   - `rbenv`
   - `telnet`
   - `terragrunt`
   - `tfenv`
   - `tflint`
   - `tree`
   - `wget`
   - `yq`

## Install the latest version of terraform with tfenv:
1. In my case, it is the verison `1.7.3`, change it to be the latest or the one that I need to install: `tfenv install 1.7.3`
2. Use the new version as the default one: `tfenv use 1.7.3`

## Create a new SSH key and upload it to the Github Profile
1. Create a new SSH key: `ssh-keygen -t ed25519 -C mvp`
2. Copy public key to clipboard: `pbcopy < ~/.ssh/id_ed25519.pub`
3. Add it to the Github Profile.
4. Createa a GPG key for signing commits. Following GitHub's instructions: https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key
   - `gpg --full-generate-key` (Select the default option: `ECC (sign and encrypt)`, the default elyptic curve: `Curve 25519` and 0 for expiration time, which means it does not expire).
   - Enter the real name: `Pau Vilella` and the email: `pau.vilella.st@gmail.com`. Leave comment in blank.
   - Set a passphrase (store it on GitHub's 1Password item).
   - List the keys: `gpg --list-secret-keys --keyid-format=long`
   - Copy the `sec` field of the key we just created.
   - Run: `gpg --armor --export <SEC_OF_OUR_KEY>`
   - Add the printed publik GPG key to the GitHub profile.
5. Tell git to use the GPG key to sign commits:
   - `git config --global --unset gpg.format`
   - `gpg --list-secret-keys --keyid-format=long`
   - Copy the `sec` of the key
   - `git config --global user.signingkey <SEC_OF_OUR_KEY>`
   - `git config --global commit.gpgsign true`
   - Set the git configs:
     - `git config --global user.name "Pau Vilella"`
     - `git config --global user.email "pau.vilella.st@gmail.com"`
   - Setup pinentry-mac as the pinentry program: `echo "pinentry-program /opt/homebrew/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf` so we will be prompted with a GUI to enter the passphrase when signing commits.
   - Restart the gpg-agent: `gpgconf --kill gpg-agent`

## Create the folders structure for git repos
1. Create the `~/git` folder: `mkdir ~/git`
2. Create the `~/git/pauvilella` folder: `mkdir ~/git/pauvilella`
3. Clone this repo for example: `cd ~/git/pauvilella && git clone git@github.com:pauvilella/utils.git`

## Install more core apps
1. Install Rectangle: https://rectangleapp.com/
   - Allow the permissions it requires, and open the app.
   - Go to the settings and set it to `Launch on login` and `Check for updates automatically`.
2. Install Visual Studio Code: https://code.visualstudio.com/download
   - Open it, allow permissions and login with the Github account.
   - Install shell integration for `code` command: `Shell Command: Install 'code' command in PATH`.
   - Enable press and hold for VSCode: `defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false`
3. Install Docker Desktop: https://www.docker.com/products/docker-desktop/
4. Install XCode from the Apple Store.
5. Install Apple Developer app from the Apple Store.
6. Install Postman: https://www.postman.com/downloads/
7. Install Lens: https://k8slens.dev/
8.  Install Mongo Compass: https://www.mongodb.com/products/tools/compass
9. Install Notion: https://www.notion.so/desktop and login it with my Google Account.
10. Install Whatsapp: https://www.whatsapp.com/download (will redirect to the App Store). Sync the new Mac as a new device with my phone.
11. Install Discord: https://discord.com/download
