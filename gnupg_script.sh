uname -a #Da información sobre el ordenador 
which gpg #Es la ubicación del binario de gpg
gpg --version #Nos da la version e informacion adicional 
gpg --full-generate-key #genero las llaves publicas y privadas 
gpg --list-keys # Listar las keys 
gpg --list-secret-keys -keyid-format=long #Listar llaves privadas
GPG --armor --export-secret-keys XXXXXXXXX #Export secret keys 
gpg --import david_llave_compa.asc  #Importar public key de mi compa 
 $ echo "este mensaje es secreto" > doc_no_cifrado.txt #crear un archivo .txt con el texto entre comillas 
 $ gpg --output doc_no_cifrado.txt --encrypt --recipient cristo123456 doc_no_cifrado.txt #encryptar el archivo
 $ gpg --decrypt doc_cifrado_1.txt #Desencryptar el archivo que me mandó mi compa 