#Navigates to the /dev directory, which contains special device files representing hardware components
cd /dev
#Lists all device nodes and drivers currently recognized by the kernel in the /dev directory
ls 
#Changes the current working directory to /proc, a virtual filesystem that provides a window into kernel data structures
cd /proc
#Reads and displays detailed processor specifications, including architecture, core count, and cache size
cat cpuinfo
#Uses the GNU Compiler Collection to compile 'saludo.c' into an executable binary named 'saludo.bin'
gcc saludo.c -o saludo.bin
#Moves the executable to a standard system command directory using administrative privileges for global access
sudo mv saludo.bin /bin
#Launches the newly created program from any location since it is now located in the system's PATH
saludo.bin
#Displays the absolute path of the current directory to confirm the user's position within the filesystem (PRINT WORKING DIRECTORY)
pwd 
#Returns to the root directory (the top-most level of the Linux filesystem hierarchy)
cd /
#Appends a visual indicator to entries (like / for folders or * for executables) to identify file types at a glance
ls -F
#Displays the unique index number (inode) assigned by the filesystem to each file and directory
ls -i
