cd /dev #Changes your current directory to /dev. This directory contains special device files that act as interfaces to your system's hardware (like hard drives, USBs, and terminals)
ls #Lists the files and folders inside your current working directory
cd /proc #Changes your current directory to /proc. This is a virtual file system that contains real-time information about system processes and hardware configuration
cat cpuinfo #Reads and displays the contents of the cpuinfo file (which is located inside the /proc directory). This file shows detailed specifications about your computer's processor (CPU)
gcc saludo.c -o saludobin #Compiles a C programming source file named saludo.c using the GCC (GNU Compiler Collection). The -o saludobin part tells the compiler to name the resulting executable output file saludobin
move #This is likely a typo. In Linux, the command to move or rename files is mv. (move is a command used in Windows/DOS command prompt)
sudo mv saludobin /bin/ #Moves the newly compiled saludobin executable into the /bin/ directory. sudo runs the command with superuser (administrator) privileges, which is required to modify the /bin/ directory. Putting a program in /bin/ makes it a system-wide command that anyone can run from anywhere.
saludi.bin #This seems to be a typo of your compiled program's name. If you typed saludobin here, it would execute the program you just moved into the /bin/ directory
pwd #Stands for "Print Working Directory". It outputs the full, absolute path of the directory you are currently in so you know exactly where you are in the file system
ls -F #Lists the contents of the current directory, but adds a special character to the end of each name to indicate its file type. For example, it adds a / to directories and an * to executable files
cd / #Changes your current directory to the root directory (/), which is the very top level of the entire Linux file system hierarchy
ls -i #Lists the files and directories along with their inode number. An inode is a unique identification number assigned to every file and folder in a Linux file system

