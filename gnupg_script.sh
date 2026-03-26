uname -a #Da informacion del ordenador 
which gpg #ubicación del binario del gpg 
gpg --version #muestra la version e info de gpg
gpg --full-key-generate #genero llave publica y privada
gpg --list-keys # lista las llaves
gpg --armor --export #Exporta las llaves
gpg --list-secret-keys --keyid-format=long # para listar las llaves privadas
gpg --armor --export-secret-keys xxxxxx # exporta la clave privada
gpg --armor --export paulitagaby12@gmail.com >> mi_llave_publica.asc #Para exportar mi llave publica 
gpg --import Ariel.asc #Para importar la llave publica de mi compañero desde el archivo
echo "Chupiseñal" > doc_no_cifrado.text # Para crear el archivo e i8mporta el texto 
gpg --output doc_cifrado.text --encrypt --recipient buitronariel23@gmail.com doc_no_cifrado.text #Cifra el contenido de nuestro archivo
gpg --decrypt doc_Arielcifrado.txt #Se utiliza para desencriptar el mensaje de mi compañero