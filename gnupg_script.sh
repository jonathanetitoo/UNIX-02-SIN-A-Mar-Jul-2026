uname -a #daba información del ordenador 
wich gpg #nos indica donde esta el binario del gpg
gpg --version # te indica la versión del gpg
gpg --full-generate-key #genero una llave pública y privada 
gpg --list-keys
gpg --armor --export dave87821@gmail.com> mi_llave_publica.asc 
gpg --list-secret-keys --keyid-format=long
