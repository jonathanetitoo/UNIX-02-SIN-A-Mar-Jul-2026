# Use cd  / to move to the root directory 
cd /
# Use this command to list the indicators in the fyles 
ls -F
# Update the local libraries 
sudo apt update
# Upgrade the local libraries 
sudo apt upgrade 
# For install parted
sudo apt install parted
# To view the tabl eof the partitions and the exact weight and the structure of the disks and the free space 
sudo parted -l && echo -e "\n---\n" && lsblk -f && echo -e "\n---\n"
# The of the first command but for the 2 ways 
sudo parted -l
lsblk -f
