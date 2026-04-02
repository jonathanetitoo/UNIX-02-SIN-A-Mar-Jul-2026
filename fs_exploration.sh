cd / 
#change directory takes you to the root directory of the filesystem
ls -F
#list shows the contents of a directory, -F option adds a symbol at the end of each name to indicate its type
sudo apt update 
# to update the list of available packages
sudo apt upgrade 
#used to install updates for the packages already installed on your system
sudo apt install parted
# used to install the program parted on your Linux system
sudo parted -l && echo -e "\n---\n" && lsblk -f && echo -e "\n---\n"
#displays detailed information about disks and partitions (parted -l), adds separators for readability (echo), 
#and then lists devices with their filesystems (lsblk -f) in an organized way
[ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS"
#checks if the system is using UEFI by testing if the directory /sys/firmware/efi exists; 
#if it does, it prints “UEFI”, otherwise it prints “BIOS”