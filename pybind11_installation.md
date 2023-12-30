# Pybind11 Installation Guide

This guide provides step-by-step instructions for installing Pybind11, a lightweight header-only library for creating Python bindings to C++ code.

## Prerequisites

Before installing Pybind11, ensure you have the following prerequisites installed on your system:

- Git
- CMake
- C++ compiler

## Installation Steps

1. **Clone the Pybind11 Repository:**

   ```bash
   git clone https://github.com/pybind/pybind11.git
   
2. **Navigate to the Pybind11 Directory:**
    ```bash
    cd pybind11
3. **Create a Build Directory:**
    ```bash
    mkdir build
4. **Navigate to the Build Directory**
    ```bash
    cd build
5. **Configure the Build with CMake:**
    ```bash
    cmake ..    
6. **Build and Install Pybind11:e:**
    ```bash
    make
    sudo make install 
    ```
7. **Optional: Clean Up (Remove Temporary Files):**
    ```bash
    cd ../..
    rm -rf pybind11
    ```