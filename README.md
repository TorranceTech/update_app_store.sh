# App Store Update Checker

A simple Bash script to check for updates in the Mac App Store and install them automatically.

## Features

- **Automatic Update Checking:** Verifies if there are updates available for your installed apps.
- **Automatic Update Installation:** Installs all available updates without user intervention.
- **Easy to Use:** Simple setup and execution process.

## Prerequisites

- **Homebrew:** Make sure you have Homebrew installed on your macOS. If not, install it from [brew.sh](https://brew.sh/).
- **mas-cli:** A command-line interface for the Mac App Store.

## Installation

### 1. Install `mas-cli`

Open your terminal and run:
```sh
brew install mas-cli
```
### 2. Download the Script
Save the following script as `update_app_store.sh`:

```
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
```
### 3. Make the Script Executable
Run the following command to make the script executable:
```
chmod +x update_app_store.sh
```
### Usage

To run the script, execute:
```
./update_app_store.sh
```

### Description

This script leverages mas-cli to automate the process of checking for and installing updates from the Mac App Store. Once executed, it will:

Verify if `mas-cli` is installed.
Authenticate to the App Store (if necessary).
Check for any available updates.
If updates are found, it will list them and proceed to install all updates automatically.
Example Output

When no updates are available:

All apps are up to date.

When updates are available:
markdown
Updates available:
1. AppName (123456789)
2. AnotherApp (987654321)
- Installing updates...
- Updates installed.
markdown


### README.md on GitHub

To add this to your GitHub repository, you can create a `README.md` file with the above markdown content. This will help others understand and use your script effectively.

---
