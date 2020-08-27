# Installation Guide

## Legacy computer

Copy from the previous computer before The Shutdown™:

* Data not included in this repo:
  * `~/Library/Fonts`
  * `~/.ssh`
  * `~/.gnupg`
  * `~/Code`
* Slack workspaces list
* Copy Macos Keyboard shortcut preferences

## New computer

* Log in iCloud and Sync all Keychain passwords
* Update Ubuntu
* Paste the directories with data not included in this repo
* `chmod -R 700 ~/.ssh`
* `chmod -R 700 ~/.gnupg`
* Install Rust
   * https://www.rust-lang.org/tools/install
   * https://github.com/ogham/exa
   	* cargo install exa
   * cargo install navi
	 https://github.com/denisidoro/navi	 
* Install Bat and put like bat https://github.com/sharkdp/bat#installation
* Install the command dot use this library:
   * apt install python-docopt
* Execute the dotfiles installer:
  * `bash <(curl -s https://raw.githubusercontent.com/Elektroi/dotfiles/master/installer)`
  * If any dialog appears regarding to not being able to install something, check in "System Preferences… > Security & Privacy" if you have to manually approve it.
  * If there's any error and you want to execute again the cloned dotfiles:
     1. `export DOTFILES_PATH="$HOME/.dotfiles"`
     2. `export DOTLY_PATH="$DOTFILES_PATH/modules/dotly"`
     3. `.dotfiles/bin/dot" self install` 
* Open Dropbox
  * Login
  * Open settings:
    * Import:
      * Disable camera uploads
    * Sync:
      * Choose folders to Sync => Disable unnecessary folders
  * Wait until syncing the 1Password Vault
* Open 1Password
  * Sync with Dropbox
  * Choose File > ~/Dropbox/Apps/1Password/1Password.opvault
  * Main app menu > Install Browser Extensions…
* Open JetBrains Toolbox
  * Login
  * Enable "Update all tools automatically"
  * Enable "Keep only the latest version"
  * Enable "generate shell scripts in ~/bin"
  * Install IntelliJ
* Open IntelliJ
  * Import IntelliJ IDEA Settings From… > JetBrains Account
  * Click on sync settings and select "Sync Plugins Silently"
  * Execute `dot intellij add_code_templates`
  * Restart IDE
  * Preferences > Editor > Color Scheme > CTV - Gruvbox Dark
* Open Google Chrome
  * Login to the personal profile and sync
  * Add the work profile and sync
  * Authenticate all the extensions
  * For each profile: Go to History > Show Full History > Tabs from other devices > Open All
* Open Rocket
  * Give permissions
  * Preferences > General
    * Start Rocket at Login
    * Trigger key: §
    * Remove all app exceptions
  * Preferences > Advanced
    * Remove all website exceptions
  * Configure license
    * Type anywhere something like "§blablabla"
    * Browse all emoji…
    * Enter activation number
* Open Spotify
  * Disable automatic startup
  * Download some playlist
* Open Authy and login

* Open Slack
  * Login to the same workspaces

* Restart
* Execute `dot shell zsh reload_completions` and then `compinit`

* Once the Google Drive folder has been sync: `ln -s ~/Pictures/Wallpapers ~/Google\ Drive/📸\ Photos/Wallpapers\ en\ uso/`
