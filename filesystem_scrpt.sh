cd /dev #change directory to /dev directory 
ls #list files and directories on the /dev directory
cd /proc #
ls #lost files and directories on the /proc
cat cpuinfo #it helps to search the info of the cpu 
cd /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/ #para movernos al main
ls #buscamos lo que tenemos en el main
gcc saludo.c  -o saludobin #compila saludo.c y lo hace un ejecutable llamado "saludobin"
sudo mv saludobin /bin/ #movemos saludobin a /bin/ para poderlo ejucutar desde cualquier carpeta
saludobin #ejecuta saludobin (lo de adentro), que printa "hola mundo"
cd /etc #provamos moviendonos a diferentes carpetas
saludobin #ejecutamos y printa "hola mundo" desde cualquier carpeta
pwd
ls -F
cd / #moves to the root
ls -F #list the files and directories including /(file), * (executable), @ (symbolic enlace)
ls -i #it helps lo search the inodos (the numbers)

