uname -a #da informacion del ordenador
which gpg  #ubicacion del binario de gpg
gpg --version #me da la version del gpg e inforamcion adicional  
gpg --full-generate-key #genero las llaves publica y privada
gpg --armor -export # 
gpg --list-secret-keys --keyid-format=long # lista las llaves privadas