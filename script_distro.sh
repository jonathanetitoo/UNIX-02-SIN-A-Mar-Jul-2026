sudo apt upgrade #It is used to install the latest versions of already installed packages.
sudo apt install -y git vim make gcc libncurses-dev flex bison bc \ 
  cpio libelf-dev libssl-dev syslinux dosfstools qemu-system-x86 #This command is used to automatically install Git, Vim, compilers, libraries, and tools necessary for development and compilation on Linux.
git clone --depth 1 https://github.com/torvalds/linux.git 
cd linux #This set of commands is used to clone the official Linux repository and enter its folder.
make menuconfig #It is used to open an interactive menu to configure kernel options before compiling.
