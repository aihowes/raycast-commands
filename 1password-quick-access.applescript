#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title 1Password Quick Access
# @raycast.mode silent

# Optional parameters:
# @raycast.icon https://i.1password.com/media/buttons-and-icons/1password-icon-512.png
# @raycast.packageName 1Password Quick Access

# Documentation:
# @raycast.description Opens 1PasswordQuick Access
# @raycast.author Alex Howes
# @raycast.authorURL https://github.com/aihowes

if application "1Password" is running
    tell application "System Events" to key code 49 using {shift down, command down}
else
    do shell script "open /Applications/1Password.app"
    do shell script "echo 'Re-run command after logged in'"
end if
