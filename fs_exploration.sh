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
# It gives you a complete summary of the disk's status, but clearer and more organized
 sudo parted -l && echo -e "/n--/n" && lsblk -f && echo -e