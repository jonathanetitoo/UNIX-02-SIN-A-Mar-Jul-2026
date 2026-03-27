uname -a #Da información sobre el ordenador 
which gpg #Es la ubicación del binario de gpg
gpg --version #Nos da la version e informacion adicional 
gpg --full-generate-key #genero las llaves publicas y privadas 
gpg --list-keys # Listar las keys 
gpg --list-secret-keys -keyid-format=long #Listar llaves privadas
gpg --armor --export-secret-keys XXXXXXXXX #Export secret keys 
gpg --import david_llave_compa.asc  #Importar public key de mi compa 
 $ echo "este mensaje es secreto" > doc_no_cifrado.txt #crear un archivo .txt con el texto entre comillas 
 $ gpg --output doc_no_cifrado.txt --encrypt --recipient cristo123456 doc_no_cifrado.txt #encryptar el archivo
 $ gpg --decrypt doc_cifrado_1.txt #Desencryptar el archivo que me mandó mi compa 
 gpg --clearsign doc_no_cifrado.txt #Firmar el documento no cifrado pero con texto legible
$ gpg --sign doc_no_cifrado.txt #Firmar un documento no cofrado pero con texto en binario
$ gpg --detach-sign doc_no_cifrado.txt #Crear un documento con la firma separada .sig
$ gpg --verify doc_no_cifrado.txt_d.sig doc_no_cifrado_David.txt #Verificar el archivo de mi compañero
$ gpg --edit-key 0B4FAC28129DEDA5272A486B1CEC874FFF9CB4E3 #Para poder darle el valor de trust
$ gpg --sign-key 0B4FAC28129DEDA5272A486B1CEC874FFF9CB4E3 #Para firmar la llave de mi compañero
$ gpg --encrypt --sign --recipient 0B4FAC28129DEDA5272A486B1CEC874FFF9CB4E3 doc_no_cifrado.txt #Enviar un archivo encyptado y firmado
$ gpg --decrypt doc_cifrado_firmado_D.gpg #Verificar el archivo encryptado y firmado de mi compañero 

