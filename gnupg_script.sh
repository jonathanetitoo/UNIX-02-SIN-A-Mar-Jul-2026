uname -a #Da informacion del ordenador 
which gpg #ubicación del binario del gpg 
gpg --version #muestra la version e info de gpg
gpg --full-key-generate #genero llave publica y privada
gpg --list-keys # lista las llaves
gpg --armor --export #Exporta las llaves
gpg --list-secret-keys --keyid-format=long # para listar las llaves privadas
gpg --armor --export-secret-keys xxxxxx # exporta la clave privada
gpg --armor --export paulitagaby12@gmail.com >> mi_llave_publica.asc #Para exportar mi llave publica 
gpg --import Ariel.asc #Para importar la llave publica de mi compañero desde el archivo
echo "Chupiseñal" > doc_no_cifrado.text # Para crear el archivo e i8mporta el texto 
gpg --output doc_cifrado.text --encrypt --recipient buitronariel23@gmail.com doc_no_cifrado.text #Cifra el contenido de nuestro archivo
gpg --decrypt doc_Arielcifrado.txt #Se utiliza para desencriptar el mensaje de mi compañero
gpg --output doc_no_cifrado_firmado.text --clearsign doc_no_cifrado.text # Se crea un documento formado 
cat doc_no_cifrado_firmado.txt # Se verifica que el docuemnto se encuentre 
gpg --verify doc_no_cifrado_firmado.txt #Se utiliza para verificar que el documento este firmado 
gpg --output doc_no_cifrado_firmado_binario.text --sign doc_cifrado.text #Este comando sirve para firmar el documento en formato binario
gpg --verify doc_no_cifrado_firmado_binario.txt # Este comando sirve para verificar que el texto este correctamente firmado en formato binario
gpg --output firma_separada_doc_no_cifrado.sig --detach-sign doc_no_cifrado.text #Este comando sirve firmar el documento y vamos a separar la firma del
documento
gpg --verify firma_separada_doc_no_cifradoAriel.sig doc_no_cifrado.txt # Sirve para verificar la firma separa de mi compañero
gpg --edit-key buitronariel23@gmail.com #Este comando se utiliza para dar el voto de confianza
gpg --sign-key 3AFF0D971913C2E2 # Este comando se utiliza para firmar y certificar la confianza 
gpg --verify doc_no_cifrado_firmado.txt #Este comando sirve para verificar el documento firmado de mi compañero.
gpg --output doc_cifrado_y_firmado.txt --encrypt --sign --recipient buitronariel23@gmail.com doc_no_cifrado.text #Este comando sirve para firmar y cifrar el documento
gpg --output doc_cifrado_y_firmado_descifrado_y_validado.txt --decrypt doc_cifrado_y_firmadoAriel.txt # Este comando se utiliza para validar la firma y descifrar
cat doc_cifrado_y_firmado_descifrado_y_validado.txt # Este comando lo utilizamos para comprobar el contenido del archivo.