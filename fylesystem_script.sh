cd /dev #change directory to /dev directory
ls #list files and directories on the /dev directory
history # carga lista los comandos realizados
cd /proc # Real-time system and process information, directly from the terminal.
cat cpuinfo #Display detailed information about the processor (CPU).
#en /media se encuentra las particiones de montaje
bin/ #encontramos archivos bonarios
var #datos variables como archivos de BDD
gcc saludo.c -o saludobin # crea un archivo en lenguaje c y luego este se transforma a lenguaje binario, el -o es output para darle nombre al archivo
sudo mv saludobin /bin/ # mueve el archivo a /bin para poder ejecutarlo desde cualquier parte de la terminal
# el inodo almacdena metadatos, el nombre del archivo NO se guarda en el inodo
#pwd es print working directory
ls -F # es para listar archivos 
/ #directorio
* #archivo
@ #enlace simbolico
ls -i #muestra los inodos