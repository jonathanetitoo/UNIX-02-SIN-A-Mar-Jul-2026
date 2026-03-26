uname -a /usr/bin/gpg #daba informacion del ordenador
wich gpg # ubicacion del binario de gpg
gpg --version #muestra la version
gpg --full-generate-key #para generar un par de llaves  
gpg --list-keys #lista las llaves
gpg --armor --export kevinalmache7@gmail.com > mi_llave_publica.asc #exportar a archivo y formato legible
gpg --list-secret-keys --keyid-format=long #para listar llaves privadas
gpg --armor --export-secret-keys XXXXXXXXXXX #para exportar mis llaves privadas, debi a un problema yo use, gpg --pinentry-mode loopback --export-secret-keys --armor XXXXXXXXXXXXXXX (valor del hash)
gpg --armor --export #para ver nuestra llave publica y poder mandarsela a nuestro amigo
gpg --import llave:punlica.asc #lo usamos para importar la llave de nuestro amigo
gpg --list-keys #verificamos que tengamos la llave de nuestro amigo
