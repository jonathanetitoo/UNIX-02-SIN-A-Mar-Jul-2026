uname -a #Da información sobre el ordenador 
which gpg #Es la ubicación del binario de gpg
gpg --version #Nos da la version e informacion adicional 
gpg --full-generate-key #genero las llaves publicas y privadas 
gpg --list-keys # Listar las keys 
gpg --list-secret-keys -keyid-format=long #Listar llaves privadas
GPG --armor --export-secret-keys XXXXXXXXX #Export secret keys 
