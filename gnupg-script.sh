uname -a#da información sobre la computadora
which gpg #ubicación del binario de gpg
gpg --version #da la version e información adicional
gpg --full-generate-key #genero la llave publica y privada 
gpg --list-keys #explorar el llavero
gpg --armor -export #exportar llave
gpg --list-secret-keys --keyd-format=long # para listar las llaves privadas
cat doc_no_cifrado.txt #comprobar si el documento esta creado
