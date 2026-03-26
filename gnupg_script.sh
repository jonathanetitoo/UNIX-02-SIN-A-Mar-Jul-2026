uname -a #Da informacion del ordenador 
which gpg #ubicación del binario del gpg 
gpg --version #muestra la version e info de gpg
gpg --full-key-generate #genero llave publica y privada
gpg --list-keys # lista las llaves
gpg --armor --export #Exporta las llaves
gpg --list-secret-keys --keyid-format=long # para listar las llaves privadas