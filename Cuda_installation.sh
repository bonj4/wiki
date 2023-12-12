#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <ubuntu_version>"
    exit 1
fi

# Assign the provided Ubuntu version to a variable
UBUNTU_VERSION=$1

# Define the CUDA version
CUDA_VERSION="12.0.0"

# Download the CUDA pin for the specified Ubuntu version
wget "https://developer.download.nvidia.com/compute/cuda/repos/ubuntu${UBUNTU_VERSION}/x86_64/cuda-ubuntu${UBUNTU_VERSION}.pin"

# Move the CUDA pin to the appropriate directory
sudo mv "cuda-ubuntu${UBUNTU_VERSION}.pin" "/etc/apt/preferences.d/cuda-repository-pin-600"

# Download the CUDA repository package
wget "https://developer.download.nvidia.com/compute/cuda/${CUDA_VERSION}/local_installers/cuda-repo-ubuntu${UBUNTU_VERSION}-${CUDA_VERSION}-local_${CUDA_VERSION}-525.60.13-1_amd64.deb"

# Install the CUDA repository package
sudo dpkg -i "cuda-repo-ubuntu${UBUNTU_VERSION}-${CUDA_VERSION}-local_${CUDA_VERSION}-525.60.13-1_amd64.deb"

# Copy the CUDA keyring to the system keyrings directory
sudo cp "/var/cuda-repo-ubuntu${UBUNTU_VERSION}-${CUDA_VERSION}-local/cuda-*-keyring.gpg" "/usr/share/keyrings/"

# Update the package list
sudo apt-get update

# Install CUDA
sudo apt-get -y install cuda

# Display a message indicating successful installation
echo "CUDA ${CUDA_VERSION} has been successfully installed on Ubuntu ${UBUNTU_VERSION}."
