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