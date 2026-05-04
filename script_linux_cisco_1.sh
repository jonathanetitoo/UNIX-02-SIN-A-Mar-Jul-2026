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
#Shows files in /var/log with full details, ordering them from the biggest file to the smallest one.
ls -l -S /var/log 
#Shows files in /var/log with full details, sorted by size from smallest to largest, and in reverse order.
ls -lSr /var/log
#Lists the files and folders in /var/log in reverse order, showing the last items first.
ls -r /var/log 
#Switches to the root user and loads the root user’s environment.
sudo su-
#Updates the list of available packages from the repositories.
sudo apt update
#Installs the program “aptitude” automatically without asking for confirmation.
sudo apt install aptitude -y
#Shows the current user, usually “root” when using sudo.
sudo whoami
#Changes to the root user and loads the root environment.
su -
#Changes to another user (default root) and starts a full login session.
su -l
#Does the same as su -l, starting a login session for the user.
su --login
#Shows detailed information about the file “hello.sh”, like permissions, size, and date.
ls -l hello.sh
#Gives execute permission to the user (owner) of the file “hello.sh”, so it can be run as a program.
chmod u+x hello.sh
#Creates a new empty file called “animals.txt”.
touch animals.txt
#Writes “1 retriever” into the file, replacing any previous content.
echo "1 retriever" > animals.txt
echo "2 badger" >> animals.txt #Adds “2 badger” at the end of the file without deleting existing content.
echo "3 bat" >> animals.txt #Adds “3 bat” to the file.
echo "4 wolf" >> animals.txt #Adds “4 wolf” to the file.
echo "5 eagle" >> animals.txt #Adds “5 eagle” to the file.
#Displays the content of the file “animals.txt” in the terminal.
cat animals.txt         
#Creates a new empty file called “alpha.txt”.
touch alpha.txt
#Add each new line without deleting the existing content.
echo "A is for Apple" > alpha.txt
echo "B is for Bear" >> alpha.txt
echo "C is for Cat" >> alpha.txt
echo "D is for Dog" >> alpha.txt
echo "E is for Elephant" >> alpha.txt
echo "F is for Flower" >> alpha.txt
echo "G is for Grapes" >> alpha.txt
echo "H is for Happy" >> alpha.txt
echo "I is for Ink" >> alpha.txt
echo "J is for Juice" >> alpha.txt
echo "K is for Kangaroo" >> alpha.txt
echo "L is for Lol" >> alpha.txt
echo "M is for Monkey" >> alpha.txt
echo "N is for Nickel" >> alpha.txt
echo "O is for Oval" >> alpha.txt
echo "P is for Pickle" >> alpha.txt
echo "Q is for Quark" >> alpha.txt
echo "R is for Rat" >> alpha.txt
echo "S is for Sloth" >> alpha.txt
echo "T is for Turnip" >> alpha.txt
echo "U is for Up" >> alpha.txt
echo "V is for Velvet" >> alpha.txt
echo "W is for Walrus" >> alpha.txt
echo "X is for Xenon" >> alpha.txt
echo "Y is for Yellow" >> alpha.txt
echo "Z is for Zebra" >> alpha.txt
#Shows all the content of the file in the terminal
cat alpha.txt 
#Shows the first 10 lines of the file.
head alpha.txt
#Shows the last 10 lines of the file.
tail alpha.txt  
#Shows the first 5 lines of the file.
head -n 5 alpha.txt 
#Shows the last 5 lines of the file.
tail -n 5 alpha.txt
#Copies the file “/etc/passwd” into the current directory you are working in.
cp /etc/passwd .

