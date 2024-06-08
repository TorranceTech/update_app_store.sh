#!/bin/bash

# Check if mas-cli is installed
if ! command -v mas &> /dev/null
then
    echo "mas-cli is not installed. Please install using 'brew install mas'."
    exit
fi

# Authenticate to the App Store (required once)
# mas signin "your-email@example.com" "your-password"

# Check for updates
updates=$(mas outdated)

if [ -z "$updates" ]; then
    echo "All apps are up to date."
else
    echo "Updates available: "
    echo "$updates"

    # Install all available updates
    mas upgrade
    echo "Updates installed."
fi