ls -a #opciones cortas
ls -all #Forma corta que hace lo mismo de ls -a, ls -all muestra hasta ocultos
ls -l #listar directorios y archivos que tengo
ls -h #mostrar tamaños de archivos en formato legible (KB, MB, GB) en la lista de ls
ls -l -a -h #Cuando los combinas en ls -lah, obtienes todo junto: lista detallada + archivos ocultos + tamaños legibles.
ls -lah #muestra todo, con detalles y tamaños fáciles de leer.
mkdir -- -rf #irve para proteger nombres de archivos o carpetas que empiezan con guion (-), evitando que se confundan con parámetros del comando.
rmdir -- -rf # se usa para remover (eliminar) directorios vacíos.
ls --help #manual opcion corta
man ls # manual opcion completa salir con q
man git #ejecutar man git, verás una página con la descripción general de Git, sus subcomandos principales (como clone, commit, push, pull, etc.) y cómo usarlos.
git man-clone #Create a shallow clone with a history truncated to the specified number of commits. Implies --single-branch unless
# --no-single-branch is given to fetch the histories near the tips of all branches. If you want to clone submodules
          # shallowly, also pass --shallow-submodules.
          #spacio → baja una página completa.

#Enter → baja una línea.

#b → sube una página completa.

#n (minúscula) → busca la siguiente coincidencia de una palabra que hayas buscado.

#N (mayúscula) → busca la coincidencia anterior de esa misma palabra.
touch script.sh #Crear nuevo directorio
chmod +x script.sh #Gives execution permission to the script.sh file for all users.
chmod u+x script.sh #Gives execution permission to the script.sh file only to the owner user.
touch secreto.txt #create an empty file called
chmod o-r secreto.txt #Remove read permission for the secret.txt file from “other” users.
chmod u+rw,go-rwx privado #It gives the owner user read and write permissions on private files and removes all permissions for groups and others.
sudo echo "hola" > /etc/archivo_protegido #It attempts to write "hello" to a protected file, but fails because the redirection is not executed with root privileges.
echo "hola" | sudo tee /etc/archivo_protegido > /dev/null #Write “hello” in /etc/protected_file with root privileges and prevent it from being displayed on the screen.
ls /etc  #It displays all files and subdirectories within /etc, such as network configurations, services, passwords, users, etc.
cat /etc/archivo_protegido #Prints to screen what is written inside /etc/protected_file.
echo "hola" | sudo tee /etc/archivo_protegido #It displays on the screen what it writes to the file (you will see "hello" in the terminal).
/dev/null #Throwing something into /dev/null is like throwing it in the digital trash, because you can never get it back.
tee # It is used to duplicate the output of a command, sending it to a file and to the screen at the same time.

confirmar #Esto solo lo hago para confirmar que estoy guardando correctamente

sudo sh -c 'echo "chao" >> /etc/archivo_protegido' # Add the word "chao" to the end of a protected system file using administrator privileges
cat /etc/archivo_protegido # Display the contents of the protected file directly on your screen.
sudo -i # Open an interactive session as superuser (root), turning your terminal into a full administrator console.
exit # Close the current terminal session or exit administrator mode to return to your normal user account.
echo "$HOME" #EXPAND THE VARIABLE
