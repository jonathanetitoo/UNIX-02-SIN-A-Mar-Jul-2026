#The command ls is used to see the files and folders in a directory. It shows a list of everything inside the current folder.
ls 
#It is not a serious command. It is just a joke inside the system, and it prints a cow saying “moo”.
apt moo
#Lists all files and folders with detailed information like size, permissions, owner, and date of modification.
ls -l
#Lists files and folders in reverse order, showing the last items first instead of the normal order.
ls -r
#Lists all files and folders with detailed information and shows them in reverse order, from last to first.
ls  -l -r
#Does the same as ls -l -r, combining both options to show detailed information in reverse order.
ls -rl
#Tries to show the funny cow message, but in some systems it only prints the version of APT with more detailed information instead of the joke.
apt -vv moo
#Shows the current directory you are in, giving the full path of your location in the system.
pwd
#Creates a new folder called “Documents” in the current directory where you are working.
mkdir Documents
#Changes the current directory to the “Documents” folder, so you start working inside it.
cd Documents 
#Changes the current directory to the root directory, which is the main top-level folder of the system.
cd /
#Moves to the parent directory, going one level up from the current folder.
cd ..
#Moves to the home directory, which is your personal main folder.
cd ~
#Lists all files and folders inside the /var/log/ directory, which usually contains system log files.
ls /var/log/
#Lists all files in /var/log with detailed information, sorted by modification time.
ls -lt /var/log
#