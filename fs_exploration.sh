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

parted -l
Lists all connected disks and their partitions, showing size, table type (MBR/GPT), and details of each partition

lsblk -f
It gives you a clear map of your disks and partitions, showing what file system they have, their labels, UUIDs, and mount points.

echo -e
These are the ones that generate lines with hyphens (---) and line breaks.

\n
significa un salto de línea


 [ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS"
 Confirm if it is UEFI or BIOS