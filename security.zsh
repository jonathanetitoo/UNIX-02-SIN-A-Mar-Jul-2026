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
groups                     # Show the groups the current user belongs to
groupadd grupo_test        # Create a new system group named "grupo_test"
groups                     # Verify current groups again after changes
groups root                # List the groups assigned to the "root" user
cat /etc/group             # Display all existing groups in the system
touch comun                # Create an empty file named "comun"
ls -l comun                # View the detailed permissions and ownership of "comun"
usermod -a -G grupo_test david   # Add user "david" to "grupo_test" without removing other groups
chgrp grupo_test comun           # Change the group ownership of the file "comun" to "grupo_test"
ls -l comun                      # Verify the new group ownership and permissions for "comun"
chown david:grupo_test mi_archivo # Change both owner to "david" and group to "grupo_test"
ls -l mi_archivo                  # Verify the updated owner and group permissions
mkdir -p proyecto/sub             # Create a directory and its subdirectory at once
touch proyecto/readme proyecto/sub/datos  # Create files in both the main and subdirectory
chown -R david:grupo_test proyecto # Recursively change owner and group for the entire folder
ls -lR proyecto                   # List all files and subdirectories recursively with details
id                                # user ID numeric, primary group, secondary group
cat /etc/passwd | head -10        # look all the system users
id -u                             # User ID
id -g                             # Primary ID group
id -G                             # All the groups id
cat /etc/passwd | grep root       # Grep filter the next word we give it
groupadd desarrolladores          # Create a simple group 
groupadd -g 2000 operaciones      # Create a simple group
groupadd --system servicios_web   # System group 
grep "GID_MIN\|GID_MAX\|SYS_GID" /etc/login.defs # See the range of GIDs on the system