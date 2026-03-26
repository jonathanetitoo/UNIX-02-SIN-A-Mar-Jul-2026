uname -a #daba información del ordenador
which gpg #muestra ubicación del binario de gpg
gpg --version #muestra la versión y verifica que todo esté instalado
gpg --full-generate-key # genero la llave pública y privadausamos RSA por ser comptible y universal 4096 para dar complejidad
gpg --armor --export # exporta la llave pública
gpg --list-secret-keys --keyid-format=long # sirve para listar la llave privada sec
gpg --armor --export-secret-keys 59F9C4BDC3B7F215 # exporta la llave privada usando el hash después de / en sec
gpg --armor --export pametoapanta.502@gmail.com > mi_llave_publica.asc # exporta la llave publica en un archivo
gpg --import joss_llave_publica.asc #importa una llave pública
gpg --list-keys # verificar el import de otra llave pública
cat doc_no_cifrado.txt # muestra si el documento fue creado correctamente