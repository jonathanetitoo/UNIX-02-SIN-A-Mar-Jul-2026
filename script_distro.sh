sudo apt upgrade #It is used to install the latest versions of already installed packages.
sudo apt install -y git vim make gcc libncurses-dev flex bison bc \ 
  cpio libelf-dev libssl-dev syslinux dosfstools qemu-system-x86 #This command is used to automatically install Git, Vim, compilers, libraries, and tools necessary for development and compilation on Linux.
git clone --depth 1 https://github.com/torvalds/linux.git 
cd linux #This set of commands is used to clone the official Linux repository and enter its folder.
make menuconfig #It is used to open an interactive menu to configure kernel options before compiling.
make -j 2 #It is used to compile the code using 2 parallel processes to speed up the build.
sudo mkdir /boot-files/initramfs #It is used to create the /boot-files/initramfs folder with administrator permissions.
sudo mkdir /boot-files #That command is used to create the /boot-files folder in the root of the system with administrator privileges.
sudo cp arch/x86/boot/bzImage /boot-files/ #sirve para copiar la imagen del kernel compilado (bzImage) al directorio /boot-files/ con permisos de administrador.
cd .. #This is used to move you to the parent directory of the current one.