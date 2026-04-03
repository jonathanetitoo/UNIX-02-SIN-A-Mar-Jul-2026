etc/ #system configuration files
home/ #user personal directories
var # variable data such as logs and database files
gcc saludo.c -o saludobin #Creates a new binary file with the contents of saludo.c 
sudo mv saludobin /bin/ # Moves the content of saludobin to the /bin/ directory
inodo #unique identifier (inode)
#The file name is not stored in the inode but in the directory that contains it 
pwd #((Print Working Directory) in Linux shows the absolute path of the current directory in the terminal
ls -F # Lists directory content adding an indicator character at the end of each name to identify its type
/ #directory
* #executable file
@ #symbolic link
cd / #Changes the current directory to the root directory (/), which is the highest level in the Linux/Unix file system hierarchy.
ls -i #Displays the inodes
Hard link #Creates a second name for the same inode
# If you delete the original name, the file still exists as long as a hard link remains
Soft link #It is a pointer (like a shortcut in Windows) to another file's name
#If you delete the original, the symbolic link breaks.
bin #Commands for general users
sbin #Commands for administrators
