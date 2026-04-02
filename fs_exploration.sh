cd /
#Change directory to the system root.
ls -F 
#List files and directories, adding a symbol (like / or *) to indicate file types.
 sudo apt update 
 #Update the local package index with the latest metadata from repositories.
 sudo apt upgrade
 #Install available updates for all currently installed packages.
 sudo apt install parted 
 #Download and install the 'parted' disk partitioning tool.
 sudo parted -l && echo --e "\n---\n" && lbslk -f && echo -e
 #List all disk partitions, followed by a separator and a detailed list of block devices and file systems.
 [ -d/sys/fimware/efi ] && echo "UEFI" || echo "BIOS"
 #Check if the system booted via UEFI or Legacy BIOS by looking for the EFI firmware directory.
 