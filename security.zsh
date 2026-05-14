umask
# Display the current default permission mask for new files and directories
touch archivo1
# Create an empty file named "archivo1"
mkdir directorio1
# Create a new directory named "directorio1"
ls -l
# List files and directories in long format to check permissions
umask 027
# Set a new mask where others have no permissions and groups have limited access
touch archivo2
# Create a second empty file with the new umask applied
mkdir diretorio2
# Create a second directory (note: misspelled as 'diretorio') with the new umask
sudo apt-get update
# Use root privileges to update the package index from repositories
apt-get update
# Attempt to update the package index (will fail without sudo)
apt-get upgrade
# Attempt to upgrade installed packages to their latest versions
apt-get install acl
# Install the Access Control List utility for more granular permissions
chown -R $(whoami) .
# Change the owner of the current directory and all its contents to yourself
setfacl -bnR .
# Remove all extended ACL entries and restore standard permissions recursively
umask 027
# Re-apply the 027 umask to ensure specific privacy for new files
ls -l
# List contents to verify permission changes
umask 022
# Set the default umask where others can read but not modify files
whoami
# Display the username of the current active user
echo "Hola" > mi_archivo
# Create a file and write "Hola" into it using redirection
ls -l mi_archivo
# Check the specific permissions and ownership of "mi_archivo"
ls -l
# List all files in the current directory with details
useradd -m -s /usr/bin/zsh luna
# Create a new user named "luna" with a home directory and zsh shell
chown luna mi_archivo
# Change the owner of "mi_archivo" to the user "luna"
ls -l
# List files to confirm the change in ownership
groups
# Display the groups that the current user belongs to
groupadd grupo_test
# Create a new system group named "grupo_test"
groups
# Show groups again to check if the new group is visible
touch comun
# Create a new file named "comun"
groups
# Display current group memberships
groupadd grupo_test
# Attempt to create "grupo_test" again (will fail if it already exists)
groups
# Check group memberships again
touch comun
# Update the timestamp of the "comun" file (or create it if missing)
ls -l comun
# View the detailed permissions for the "comun" file
cat /etc/group
# Display the system file containing all group definitions
useradd -m -s /usr/bin/zsh ariel
# Create a new user named "ariel" with a home directory and zsh shell
usermod -a -G grupo_test ariel
# Add the user "ariel" to the "grupo_test" secondary group
chgrp grupo_test comun
# Change the group ownership of the file "comun" to "grupo_test"
ls -l comun
# Verify that the group of "comun" is now "grupo_test"
chown luna:grupo_test mi_archivo
# Change both the owner to "luna" and the group to "grupo_test" for "mi_archivo"
ls -l mi_archivo
# Confirm the new owner and group for "mi_archivo"
mkdir -p proyecto/sub
# Create a directory structure with a nested subdirectory in one command
touch proyecto/readme proyecto/sub/datos
# Create two files at different levels of the "proyecto" directory tree
chown -R luna:grupo_test proyecto
# Recursively change the owner and group for the "proyecto" folder and everything inside
ls -lR proyecto
# List all files and subdirectories within "proyecto" recursively to verify ownership
#View the current user's numeric ID
#Numeric user ID, primary group, secondary groups
id
#View all system users
cat /etc/passwd | head -10
groups $Luna
#Ver el UID y GID del usuario actual
id -u
#User ID
id -g
#Group Id principal
id -G
#todos los Group IDs
cat /etc/group | grep root
# Search for the 'root' group entry within the system's group definition file