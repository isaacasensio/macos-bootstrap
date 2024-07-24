#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" &> /dev/null
}

# Check if Homebrew is installed
if command_exists brew; then
    echo "Homebrew is already installed."
else
    echo "Homebrew is not installed. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Verify Homebrew installation
    if command_exists brew; then
        echo "Homebrew installed successfully."
    else
        echo "Failed to install Homebrew. Exiting."
        exit 1
    fi
fi

# Update Homebrew
echo "Updating Homebrew..."
brew update

# Check if Ansible is installed
if command_exists ansible; then
    echo "Ansible is already installed."
else
    echo "Ansible is not installed. Installing Ansible..."
    brew install ansible

    # Verify Ansible installation
    if command_exists ansible; then
        echo "Ansible installed successfully."
    else
        echo "Failed to install Ansible. Exiting."
        exit 1
    fi
fi

echo "Homebrew and Ansible are installed and up to date."
