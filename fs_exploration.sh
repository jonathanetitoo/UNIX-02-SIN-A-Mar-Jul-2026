# go to the root folder
cd /
# list files, like viewing what's in a folder, and add symbols to identify what each item is.
ls -F
# Update the list of available packages
sudo apt update
# Update the programs you already have installed
sudo apt upgrade
# Install the parted tool to manage disks
sudo apt install parted
# It's used to display disk and partition information in an organized way. First, it shows the disks with `parted -`. Then it prints a separator (`--`) and finally displays the partitions and file systems with `lsblk -f`.
 sudo parted -l && echo -e "\n--\n" && lsblk -f && echo -e
 # It displays a list of all disks and their partitions on the system.
 sudo parted -l 