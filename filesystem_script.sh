#Change directory to /dev directory 
cd /dev
#List files and directories on the /dev directory 
ls 
#This folder contains system information and real-time processes 
cd/proc 
ls
#Displays the contents of the cpuinfo file 
cat cpuinfo 
# Goes to the specified project directory.
cd /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/
# Without parameters, returns you to your home directory.
cd
# Transfers the file "saludobin" into the /bin directory (where system executables are stored).
sudo mv saludobin /bin/
# Runs the executable program called "saludobin" (if it exists and is executable).
saludobin
# Navigates to /etc/gss, a directory related to system configuration settings.
cd /etc/gss
# Prints the command history once more.
history
# Shows the current working directory path.
pwd
# Lists files and directories, adding an indicator symbol at the end of each name.
ls -F