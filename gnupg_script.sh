uname -a # da informacion acerca del ordenador
which gpg #ubicacion del binario de gpg
gpg --version #me da la version e informacion adicional 
gpg --full-generate-key # genero las llaves publicas y privadas 
gpg --list-key # muestra todas las claves gpg publicas
gpg --armor --export # exporta una clave publica gpg de un formato de texto
gpg --list-secret-keys --keyid-format-long # listar las claves gpg secretas privadas 
gpg --armor --export-secret-keys 1A2D50F7F787AE3A # exporta tu clave privada asociada al Id enviado 
gpg --armor --export davidsvaca07@gmail.com > mi_llave_publica.asc # exporta la llave asociada al correo
gpg --import llavepublica.asc llave-publica.asc # importa la llave de mi compa 
$ echo "rubias o morenas"> doc_no_cifrado.txt # creamos un archivo con mensaje 
gpg --output doc_cifrado.txt --encrypt --recipient adriangarciasnchez@gmail.com doc_no_cifrado.txt # toma el archivo y lo cifra usando la llave publica del destinatario
$ gpg --decrypt cifradoadrian.txt # decifra el mensaje de mi amigo
