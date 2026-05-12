umask 027                  # Set default permissions to 750 (rwxr-x---)
touch archivo2             # Create an empty file named archivo2
mkdir directorio2          # Create a new directory named directorio2
ls -l                      # List directory contents with detailed permissions
sudo apt update            # Refresh the list of available packages and versions
sudo apt upgrade            # Install available updates for all current packages
sudo apt install acl       # Install the Access Control List management utility
chown -R $(whoami) .       # Give ownership of current folder to the active user
setfacl -bnR .             # Remove all extended ACL entries recursively
umask 022                  # Set default permissions to 755 (rwxr-xr-x)
whoami                     # Display the current active username
echo "Hola" > mi_archivo   # Create "mi_archivo" with the text "Hola"
ls -l mi_archivo           # List details and permissions of "mi_archivo"
useradd -m -s /usr/bin/zsh david  # Create user "david" with home dir and ZSH shell
chown david mi_archivo     # Change the owner of "mi_archivo" to user "david"