uname_a # Da la información del ordenador 
which gpg # Da la ubicación del binaro de gpg
gpg --version #Nos dice la version del gpg e información adicional 
gpg --full-generate-key #para generar llave pública y la llave privada 
gpg --list-keys #Para ver las llaves
gpg -armor --export #Para exportar las llaves 
gpg --list-secret-keys --keyid-format=long #Para listar y ver las llaves privadas 
gpg --armor --export-secret-keys HASH #Exporta tu clave priva y la convierte en texto para copiar
gpg --armor --export<ashley2007egmail.com> mi_llave_publica.asc #Exporta tu clave publica 
gpg --import CAMILLA.asc #Exportar una clave desde un archivo 
echo "Tqm, Camillaaa">doc_no_cifrado.txt #Se crea el archivo y redirige el texto a un archivo
gpg --output doc_cifrado.txt --encrypt --recipient camiloscas.30.lascano@gmail.com #Cifra el contenido y usa la clave publica de la otra persona
