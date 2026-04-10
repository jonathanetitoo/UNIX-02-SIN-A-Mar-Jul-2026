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
git clone --depth 1 https://git.busybox.net/busybox 
cd busybox #It is used to clone the official BusyBox repository with minimal history and enter its folder.
make menuconfig #In BusyBox, this is used to customize which commands and utilities will be available in your BusyBox executable.
make -j 2 #generates the main busybox binary using two parallel processes.
sudo mkdir /boot-files/initramfs #Create the /boot-files/initramfs folder in the root of the system with administrator privileges, so that you can install or copy the initramfs files that will accompany your kernel there.
sudo make CONFIG_PREFIX=/boot-files/initramfs install #Place BusyBox and its utilities inside /boot-files/initramfs to use them in your initramfs.
cd /boot-files/initramfs #Move it into the /boot-files/initramfs folder, which now contains the BusyBox installation and will be the basis of your initramfs for the kernel.
sudo vi init #It allows you to write the startup script that will run when your initramfs starts.
sudo rm linuxrc #Delete the default startup script so you can use your own init script.
sudo chmod +x init #Enables the init script to run when the system starts.
sudo find . | cpio -o -H newc > ../init.cpio
sudo su #Pack all the contents of the current directory (initramfs) into an init.cpio file in newc format, which will be your initramfs ready for the kernel to load at boot time.
sudo su
find . | cpio -o -H newc > ../init.cpio
exit #I got a permission denied message, so I used this command
cd .. #changes to the parent directory of the current one.
sudo su #Change your current shell to root so that all subsequent commands are executed with administrator privileges.
dd if=/dev/zero of=boot bs=1M count=50 #It generates a 50MB empty image that you can then use as a simulated disk or partition.
mkfs -t fat boot #prepara tu archivo boot como un disco con formato FAT para almacenar datos o arrancar.
