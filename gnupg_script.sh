uname -a #Da info del ordenador 
which gpg #ubicación del binario del gpg 
gpg --version #muestra la versión e info de gpg 
gpg --full-generate-key #genero la llave publica y privada 
gpg --list-keys #lista las llaves q hay 
gpg --armor --export #exporta 
gpg --list-secret-keys --keyid-format=long #Para listar y ver las llaves privadas
gpg --armor --export-secret-keys XXXXXXXX #Exporta la clave privada y la convierte en texto para copia
gpg --armor --export camiloscas.30.lascano@gmail.com > mi_llave_publica.asc #Exportar llave pública 
gpg --import Ashley.asc #Importar llave pública de Ash de archivo Ashley.asc 
echo "te quiero gei">doc_no_cifrado.txt #se genera un archivo con el mensaje 
