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
#and then lists devices with their filesystems (lsblk -f) in an organized way && MEANS AND
[ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS"
#checks if the system is using UEFI by testing if the directory /sys/firmware/efi exists; 
#if it does, it prints “UEFI”, otherwise it prints “BIOS”. || MENAS OR 
echo "mi archivo" > test.txt 
#creates a file called test.txt and writes the text “mi archivo” into it
ls
#command lists the files and directories in the current directory
cat test.txt 
#displays the contents of the file test.txt in the terminal
stat test.txt
#shows detailed information about the file test.txt