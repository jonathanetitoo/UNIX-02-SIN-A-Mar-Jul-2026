uname -a /usr/bin/gpg #daba informacion del ordenador
wich gpg # ubicacion del binario de gpg
gpg --version #muestra la version
gpg --full-generate-key #para generar un par de llaves  
gpg --list-keys #lista las llaves
gpg --armor --export kevinalmache7@gmail.com > mi_llave_publica.asc #exportar a archivo y formato legible
gpg --list-secret-keys --keyid-format=long #para listar llaves privadas
gpg --armor --export-secret-keys XXXXXXXXXXX #para exportar mis llaves privadas, debi a un problema yo use, gpg --pinentry-mode loopback --export-secret-keys --armor XXXXXXXXXXXXXXX (valor del hash)
gpg --armor --export #para ver nuestra llave publica y poder mandarsela a nuestro amigo
gpg --import llave_publica.asc #lo usamos para importar la llave de nuestro amigo
gpg --list-keys #verificamos que tengamos la llave de nuestro amigo
$ echo "este mensaje es secreto"> doc_no_cifrado.txt #es para crear un txt con el mensaje seleccionado, en mi caso es "este mensaje es secreto"
gpg --output doc_cifrado.txt --encrypt --recipient kkevincruzatty@gmail.com doc_no_cifrado.txt #es para cifrar y crear un .txt para nuestro amigo, ocupamos su correo o su hash
gpg --decrypt doc_cifrado.txt #para desencriptar el archivo de nuestro amigo, se pone el nombre del archivo
gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt #firmamos y se crea un documento firmado llmado doc_no_cifrado_firmado.txt 
$ cat doc_no_cifrado_firmado.txt #para verificar la creacion del coumento y el contenido
gpg --verify doc_no_cifrado_firmado2.txt #para verificar la firma del doc no cifrado
gpg --edit-key XXXXXXXXXXXXXXXXXXXXXX #para editar voto de confianza a nuestro amigo, en las x va la RSA key
#cuando estemos en gpg> pondremos trust, quedando gpg> trust, para si poder seleccionar cun voto, es mi caso sera el 4 la cual es confio totalmente, para luego poner gpg> q que nos sacara del modo gpg
gpg --sign-key XXXXXXXX #en las x pondremos el codigo RSA pub que nos dio despues de seleccionar el voto de confianza, para asi poder firmar el documento
gpg --verify brodoc_no_cifrado_firmado2.txt #en mi caso es ya el nombre del archivo y nos sirve para verificar el documento verificado por nuestro amigo
gpg --output doc_no_cifrado_firmado_binario.txt --sign doc_no_cifrado.txt #firma y crea un documento en binario
gpg --verify doc_no_cifrado_firmado_binario2.txt #verificamos el archivo bin que nos envia nuestro amigo 
gpg --output firma_separada_doc_no_cifrado.sig --detach-sign doc_no_cifrado.txt #crea un documento y separa la firma de esta
gpg --verify MICOMPA_firma_separada_doc_no_cifrado.sig MICOMPA_doc_no_cifrado.txt #para verificar el archivo y firma de nuestro amigo 
gpg --output doc_cifrado_y_firmado.txt --encrypt --sign --recipient XXXXXXX doc_no_cifrado.txt #es para firmar y cifrar un documento
gpg --output doc_cifrado_y_firmado_descifrado_y_validado.txt --decrypt MICOMPA_doc_cifrado_y_firmado.txt #para verificar la firma y desencriptar el documento de nuestro amigo
$ cat doc_cifrado_y_firmado_descifrado_y_validado.txt #para verificar si realizmos todo bien hecho deberia salir el mensaje desencriptado de nuestro amigo, en mi caso es "este mensaje es secretisimo"