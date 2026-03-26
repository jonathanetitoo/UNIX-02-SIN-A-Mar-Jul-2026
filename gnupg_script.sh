uname_a # Da la información del ordenador 
which gpg # Da la ubicación del binaro de gpg
gpg --version #Nos dice la version del gpg e información adicional 
gpg --full-generate-key #para generar llave pública y la llave privada 
gpg --list-keys #Para ver las llaves
gpg -armor --export #Para exportar las llaves 
gpg --list-secret-keys --keyid-format=long #Para listar y ver las llaves privadas 
gpg --armor --export-secret-keys HASH #Exporta tu clave priva y la convierte en texto para copiar