Resources:

1. [Ubuntu Official](https://ubuntu.com/server/docs/nvidia-drivers-installation)
   ```bash
   sudo apt install linux-modules-nvidia-535-server-$(uname -r)
   sudo apt-cache policy linux-modules-nvidia-535-server-$(uname -r)
   sudo apt install nvidia-driver-535-server
   sudo apt install nvidia-utils-535-server
   sudo reboot
   ```
2. [Remove CUDA and driver](https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#removing-cuda-toolkit-and-driver)
3. [Install CUDA manually](https://developer.nvidia.com/cuda-11-8-0-download-archive?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=22.04&target_type=runfile_local)
