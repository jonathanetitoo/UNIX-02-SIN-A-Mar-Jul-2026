cd /   
Change Directory (cambiar directorio) Represents the root of the file system.

ls -F
Displays all information in alphabetical order by file name

sudo apt update
updates the local package list

sudo apt upgrade
Update all installed software packages

sudo apt install parted
install parted

sudo parted -l && echo -e "\n---\n" && lsblk -f && echo -e "\n---\n"
It generates a complete report of your disks and partitions, showing both the partition table and the file systems, with separators to make it more readable.