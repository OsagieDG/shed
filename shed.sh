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

# If there are previously stored credentials for GitHub
# in your keychain, this removes existing credentials for GitHub.
security delete-internet-password -l "github.com"

# Unsets credential helper configurations
git config --global --unset credential.helper
git config --system --unset credential.helper

echo "GitHub account switched successfully."

