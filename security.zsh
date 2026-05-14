#Sets the permission mask for new files and directories
umask 027
#Creates an empty file named archivo1
touch archivo1
#Creates a directory named directorio1
mkdir directorio1
#Sets the permission mask to 027 again
umask 027
#Creates an empty file named archivo2
touch archivo2
#Creates a directory named directorio2
mkdir directorio2
#Displays files and permissions in detailed format
ls -l
#Updates the system package list
sudo apt-get update
#Installs the ACL package
sudo apt install acl
#Changes ownership of all files to the current user
chown -R $(whoami) .
#Removes all ACL permissions recursively
setfacl -bnR .
#Sets the permission mask to 027 again
umask 027
#Creates an empty file named archivo
touch archivo2
#Sets the permission mask for owner-only access
umask 077
#Creates an empty file named secreto.txt
touch secreto.txt
#Creates a directory named privado
mkdir privado
#Displays files and permissions in detailed format
ls -l
#Sets the permission mask allowing read access for everyone and write access only for the owner
umask 022
#Displays the current system user
whoami
#Creates a file named mi_archivo with the text "Hola"
echo "Hola" > mi_archivo
#Displays the file permissions, owner, and group
ls -l mi_archivo
#Creates a new user named luna with zsh shell
useradd -m -s /usr/bin/zsh luna
#Attempts to change the file owner to luna
chown luna mi_archivo
# Display the groups the current user belongs to
groups
# Create a new group named grupo_test
groupadd grupo_test
# Display groups again to verify 
groups
# Create a new empty test file
touch comun
# Check the initial owner and group of the new file
ls -l comun
#Adds the user luna to the grupo_test group
usermod -a -G grupo_test luna
#Changes the group owner of the file comun to grupo_test
chgrp grupo_test comun
#Displays the permissions, owner, and group of the file comun
ls -l comun
# Change both the owner and group of the file at the same time
sudo chown luna:grupo_test mi_archivo
# Verify the file owner, group, and permissions
ls -l mi_archivo
# Create the proyecto directory and its subdirectory sub
mkdir -p proyecto/sub
# Create the files readme and datos inside the project structure
touch proyecto/readme proyecto/sub/datos
# Change the owner and group recursively for the entire proyecto directory
chown -R luna:grupo_test proyecto
# Display the full recursive listing of the proyecto directory
ls -lR proyecto
# User numeric ID, primary group, secondary groups
id
# Shows the first 10 registered users of the system.
cat /etc/passwd | head -10
# View the UID and GID of the current user
# User ID
id -u
# Principal Group ID 
id -g
# All groups id
id -G
# Displays lines containing the word "root" from the /etc/grouo file.
cat /etc/group | grep root
# Creates a new folder called "proyecto_unix" in the home directory
mkdir ~/proyecto_unix/ 
# Displays all files and details inside the "proyecto_unix" folder
ls -la ~/proyecto_unix/
# Searches for the groups "desarrolladores", "operaciones", and "servicios_web" in the /etc/group file
grep "desarrolladores\|operaciones\|servicios_web" /etc/group
# Searches for the same groups using extended regular expressions
grep  -E "desarrolladores|operaciones|servicios_web" /etc/group
# Add GID configuration search command
grep "GID_MIN\|GID_MAX\|SYS_GID" /etc/login.defs
# Creates a new regular group called "diseño"
addgroup diseño
# Creates a new group called "marketing" with the custom GID 2100
addgroup --gid 2100 marketing
# Creates a system group called "cache_web"
addgroup --system cache_web
# Searches for the groups "diseno", "marketing", and "cache_web" in the /etc/group file
grep "diseno\|marketing\|cache_web" /etc/group
# Displays the groups of the current user
groups
# Shows user ID, primary group, and secondary groups
id
# Adds the user "root" to the "desarrolladores" group
usermod -aG desarrolladores root
# Adds the user "root" to the "diseño" group
usermod -aG diseño root
# Creates a new group called "grupo_temporal"
groupadd grupo_temporal
# Adds the user "root" to the "grupo_temporal" group
usermod -aG grupo_temporal root
# Displays detailed information and groups for the user "root"
id root
