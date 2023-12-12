# CUDA Installation Script

This script automates the installation process of CUDA on Ubuntu. It supports multiple Ubuntu versions. Follow these steps to install CUDA on your system.

## Usage

Run the script with the desired Ubuntu version as an argument:

```bash
bash install_cuda.sh <ubuntu_version>
```


## Installation Steps

1. Download the CUDA pin for Ubuntu 22.04:

    ```bash
    wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin
    ```

2. Move the CUDA pin to the appropriate directory:

    ```bash
    sudo mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600
    ```

3. Download the CUDA repository package:

    ```bash
    wget https://developer.download.nvidia.com/compute/cuda/12.0.0/local_installers/cuda-repo-ubuntu2204-12-0-local_12.0.0-525.60.13-1_amd64.deb
    ```

4. Install the CUDA repository package:

    ```bash
    sudo dpkg -i cuda-repo-ubuntu2204-12-0-local_12.0.0-525.60.13-1_amd64.deb
    ```

5. Copy the CUDA keyring to the system keyrings directory:

    ```bash
    sudo cp /var/cuda-repo-ubuntu2204-12-0-local/cuda-*-keyring.gpg /usr/share/keyrings/
    ```

6. Update the package list:

    ```bash
    sudo apt-get update
    ```

7. Install CUDA:

    ```bash
    sudo apt-get -y install cuda
    ```

## Verification

To verify the installation, you can check the CUDA version:

```bash
nvidia-smi -l 1
