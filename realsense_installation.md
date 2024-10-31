# Installation Guide

## 1. Install OpenCV and OpenCV-contrib

### Step 1: Update and install prerequisites
```bash
sudo apt update && sudo apt install -y cmake g++ wget unzip
```

### Step 2: Download and unpack OpenCV sources
```bash
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.x.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.x.zip
unzip opencv.zip
unzip opencv_contrib.zip
```

### Step 3: Create build directory and switch into it
```bash
mkdir -p build && cd build
```

### Step 4: Configure
```bash
cmake -DOPENCV_EXTRA_MODULES_PATH=../opencv_contrib-4.x/modules -DOPENCV_ENABLE_NONFREE ../opencv-4.x
```

### Step 5: Build
```bash
cmake --build .
```

## 2. Install librealsense

### Step 1: Install dependencies
Make Ubuntu up-to-date including the latest stable kernel:
```bash
sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade
```

Install the core packages required to build librealsense binaries and the affected kernel modules:
```bash
sudo apt-get install libssl-dev libusb-1.0-0-dev libudev-dev pkg-config libgtk-3-dev
```

**Note:** Certain librealsense CMAKE flags (e.g., CUDA) require version 3.8+ which is currently not made available via apt manager for Ubuntu LTS.

### Step 2: Install build tools
```bash
sudo apt-get install git wget cmake build-essential
```

### Step 3: Prepare Linux Backend and Development Environment
Unplug any connected Intel RealSense camera and run:
```bash
sudo apt-get install libglfw3-dev libgl1-mesa-dev libglu1-mesa-dev
```

### Step 4: Clone and set up librealsense repository
```bash
git clone https://github.com/IntelRealSense/librealsense.git
cd librealsense 
./scripts/setup_udev_rules.sh
```

### Step 5: Build and apply patched kernel modules
For different Ubuntu versions and kernels:

- **Ubuntu 20/22 (focal/jammy) with LTS kernel 5.13, 5.15:**
```bash
./scripts/patch-realsense-ubuntu-lts-hwe.sh
```

- **Ubuntu 18/20 with LTS kernel (< 5.13):**
```bash
./scripts/patch-realsense-ubuntu-lts.sh
```

### Step 6: Build librealsense with examples
```bash
mkdir build && cd build
cmake ../ -DBUILD_EXAMPLES=true -DBUILD_GRAPHICAL_EXAMPLES=true -DBUILD_CV_EXAMPLES=true -DBUILD_CV_KINFU_EXAMPLE=true
sudo make uninstall && make clean && make && sudo make install
```
