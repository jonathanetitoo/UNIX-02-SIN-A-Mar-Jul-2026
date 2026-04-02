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
 # shows disks with file systems
 lsblk -f
 # shows what is mounted
 mount | grep
 # executes the next command only if the previous one worked
&&
# It means “to activate special interpretations”
echo -e
# It's a quick way to find out the system's boot type.
[ -d /sys/firmware/efi ] && echo "UEFI"|| echo "BIOS"
#It is used to execute a command only if the previous one fails; it is the OR (yes or no) operator
||
# Check if it's a directory
-d
# Create a file called test.txt and write inside
echo "mi archivo" > test.txt 
#Shows the files in the directory
ls
#Show what's inside the file
cat test.txt
#Displays detailed file information
stat test.txt
