#change directory 
cd /dev
# list files and directories of the / dev directory 
ls 
# to see the history of comands that ypu execute 
history 
#change directory to /proc
cd /proc
ls 
# gives the information of the virtual cpu 
cpu info
cd /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/

#Change directory to the specific project folder.

ls

#List files and directories in the current path.

gcc saludo.c -o saludobin

#Compile the C file and create an executable named 'saludobin'.

sudo mv saludobin /bin/

#Move the executable to the system binary folder using root privileges.

saludobin

#Run the newly created program from the current location.

cd

#Return to the user's home directory.

saludobin
#Run the program again (testing if it's accessible globally via /bin/

cd /etc/gss

#to change directory to the GSS configuration path.

history

#Display the list of recently executed commands.

ls -F
# Add simbols to to identify the type of file 

ls -i

# The inode numbers of the files in the directory 

