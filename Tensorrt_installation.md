<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
NVIDIA GPU Setup Guide


<h1>NVIDIA GPU Setup Guide</h1>

<h2>Install NVIDIA Driver 525</h2>
<p>Open the "Additional Drivers" utility and select NVIDIA 525.</p>

<h2>Install CUDA</h2>
<ol>
    <li>Download CUDA repository pin:
        <code>wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin</code>
    </li>
    <li>Move the pin to preferences directory:
        <code>sudo mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600</code>
    </li>
    <li>Download CUDA repository deb file:
        <code>wget https://developer.download.nvidia.com/compute/cuda/12.0.0/local_installers/cuda-repo-ubuntu2004-12-0-local_12.0.0-525.60.13-1_amd64.deb</code>
    </li>
    <li>Install the deb file:
        <code>sudo dpkg -i cuda-repo-ubuntu2004-12-0-local_12.0.0-525.60.13-1_amd64.deb</code>
    </li>
    <li>Copy keyring files:
        <code>sudo cp /var/cuda-repo-ubuntu2004-12-0-local/cuda-*-keyring.gpg /usr/share/keyrings/</code>
    </li>
    <li>Update package list:
        <code>sudo apt-get update</code>
    </li>
    <li>Install CUDA:
        <code>sudo apt-get -y install cuda</code>
    </li>
</ol>

<h2>Install cuDNN 8.6</h2>
<ol>
    <li>Install cuDNN deb file:
        <code>sudo dpkg -i cudnn-local-repo-${OS}-8.x.x.x_1.0-1_amd64.deb</code>
    </li>
    <li>Copy keyring files:
        <code>sudo cp /var/cudnn-local-repo-*/cudnn-local-*-keyring.gpg /usr/share/keyrings/</code>
    </li>
    <li>Update package list:
        <code>sudo apt update</code>
    </li>
    <li>Install libcudnn8:
        <code>sudo apt install libcudnn8=8.x.x.x-1+cudaX.Y</code> (or <code>sudo apt install libcudnn8</code> if the former doesn't work)
    </li>
</ol>

<h2>Install TensorRT</h2>
<ol>
    <li>Install TensorRT deb file:
        <code>sudo dpkg -i nv-tensorrt-repo-${os}-${tag}_1-1_amd64.deb</code>
    </li>
    <li>Add the TensorRT repository key:
        <code>sudo apt-key add /var/nv-tensorrt-repo-${tag}/7fa2af80.pub</code>
    </li>
    <li>Update package list:
        <code>sudo apt-get update</code>
    </li>
    <li>Install TensorRT:
        <code>sudo apt-get install tensorrt</code>
    </li>
    <li>Install Python3 library for TensorRT:
        <code>sudo apt-get install python3-libnvinfer-dev</code>
    </li>
</ol>

<h3>Links</h3>
<ul>
    <li><a href="https://docs.nvidia.com/deeplearning/tensorrt/archives/tensorrt-700/pdf/TensorRT-Installation-Guide.pdf">TensorRT Installation Guide PDF</a></li>
</ul>


