#Change directory to /dev directory
cd /dev
#lists  files and directories on the /dev directory
ls 
#Change directory to /proc directory
cd /proc
#View CPU info
cat cpuinfo
#Create binary to run
gcc saludo.c -o saludo.bin
move
sudo mv saludo.bin /bin
saludo.bin
#Print Working Directory
pwd 
#Change directory to root
cd /
#Shows file types
ls -F
#List file inodes
ls -i
