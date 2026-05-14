cd /dev #change directory to /dev directory 
ls #list files and directories on the actual folder, in this case /dev
cd /proc #
ls #lost files and directories on the actual folder, in this case /proc
cat cpuinfo #it helps to search the info of the cpu 
cd /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/ #we change the directory to workspaces...
ls #list files and directories of the actual folder
gcc saludo.c  -o saludobin #compile saludo.c and it makes an executable called "saludobin"
sudo mv saludobin /bin/ #We move saludobin to /bin/ so we can run it from any folder
saludobin #execute saludobin (the code inside), and it print "hola mundo"
cd /etc #Let's try moving to different folders
saludobin #execute and print "hola mundo" from any folder
pwd #it shows the folder where we are
ls -F
cd / #moves to the root
ls -F #list the files and directories including /(folders), * (executable), @ (symbolic enlace) of the actual folder (directory)
ls -i #it helps lo search the inodos (the numbers)
