#!/bin/bash

# Before installing Pybind11, make sure you have the necessary dependencies
sudo apt-get update
sudo apt-get install -y cmake g++


# Clone the pybind11 repository
git clone https://github.com/pybind/pybind11.git

# Change into the pybind11 directory
cd pybind11

# Create a build directory
mkdir build

# Change into the build directory
cd build

# Configure the build using CMake
cmake ..

# Build and install pybind11
  make
  sudo make install


# Clean up (optional)
cd ../..
rm -rf pybind11

echo "Pybind11 has been installed successfully."
