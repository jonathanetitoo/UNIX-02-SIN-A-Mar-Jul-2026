uname -a #da informacion del ordenador
which gpg  #ubicacion del binario de gpg
gpg --version #me da la version del gpg e inforamcion adicional  
gpg --full-generate-key #genero las llaves publica y privada
gpg --list-keys #explorar el llavero
gpg --armor -export # 
gpg --list-secret-keys --keyid-format=long # lista las llaves privadas  FB0DD440BD9F338D 2026-03-26 
cat doc_no_cifrado.txt #comprobar si el documento esta creado
