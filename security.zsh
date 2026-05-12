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
#
whoami
#
echo "Hola" > mi_archivo
#
ls -l mi_archivo
#
useradd -m -s /usr/bin/zsh luna
#
chown luna mi_archivo