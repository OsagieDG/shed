#!/bin/zsh

echo "Enter your GitHub username:"
read required_username
echo "Enter your GitHub email:"
read required_email

# fetches
current_username=$(git config --global user.name)
current_email=$(git config --global user.email)

# checks
if [ "$current_username" = "$required_username" ] &&
  [ "$current_email" = "$required_email" ]; then
  echo "The GitHub account is already set to the desired user."
  exit 0
fi

# sets
git config --global user.name "$required_username"
git config --global user.email "$required_email"

# Remove Github credentials for macOS Keychain
if [[ "$(uname)" == "Darwin" ]]; then
  security delete-internet-password -l "github.com"
else
  echo "Skipping macOS keychain command on non-macOS system"
fi

# Unsets credential helper configurations
git config --global --unset credential.helper
git config --system --unset credential.helper

echo "\n"

echo "GitHub account switched successfully."

