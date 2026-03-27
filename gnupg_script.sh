#BLOQUE A
uname -a #daba información del ordenador
which gpg #muestra ubicación del binario de gpg
gpg --version #muestra la versión y verifica que todo esté instalado
gpg --full-generate-key # genero la llave pública y privadausamos RSA por ser comptible y universal 4096 para dar complejidad
gpg --armor --export # exporta la llave pública
gpg --list-secret-keys --keyid-format=long # sirve para listar la llave privada sec
#BLOQUE B
gpg --armor --export-secret-keys 59F9C4BDC3B7F215 # exporta la llave privada usando el hash después de / en sec
gpg --armor --export pametoapanta.502@gmail.com > mi_llave_publica.asc # exporta la llave publica en un archivo
gpg --import joss_llave_publica.asc #importa una llave pública
gpg --list-keys # verificar el import de otra llave pública
# BLOQUE C
echo "Hola Joss, mensaje top secret" > doc_no_cifrado.txt #creación del documento no cifrado
cat doc_no_cifrado.txt # muestra si el documento fue creado correctamente
gpg --output doc_cifrado.txt --encrypt --recipient jolagunapu@uide.edu.ec doc_no_cifrado.txt # sirve para cifrar el documento anterior no cifrado
gpg --decrypt joss_cifrado.txt # descrifra el mensaje enviado por joss
#BLOQUE D (FIRMA clearsign)
gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt #create a signature with the content in a single plain text file 
cat doc_no_cifrado_firmado.txt #Verification of the correct creation of the signature
gpg --verify MICOMPA_doc_no_cifrado_firmado.txt #Check your partner's signature
#BLOQUE E (WEB OF TRUST)
gpg --edit-key jolagunapu@uide.edu.ec #Assign a trust level to your partner's key using Web of Trust; assign the trust level (recommended: 4) and use “q” to finish 
gpg --sign-key jolagunapu@uide.edu.ec #We signed the document to confirm our decision
gpg --verify MICOMPA_doc_no_cifrado_firmado.txt #Verify the digital signature of the signed document your colleague sent. GPG already recognizes your colleague's key as trusted, so the verification comes back clean, with no warnings.
# CONTINUACIÓN BLOQUE D 
gpg --output doc_no_cifrado_firmado_binario.txt --sign doc_no_cifrado.txt #Sign the document in binary format using the signature in the file
gpg --verify JOSS_doc_no_cifrado_firmado_binario.txt #Verify partner's binary signed document
gpg --output firma_separada_doc_no_cifrado.sig --detach-sign doc_no_cifrado.txt #Sign document with detached signature in separate file
gpg --verify MICOMPA_firma_separada_doc_no_cifrado.sig MICOMPA_doc_no_cifrado.txt #Verify the partner's document using a detached signature file
# Bloque F — Cifrado y firma simultáneos
gpg --output doc_cifrado_y_firmado.txt --encrypt --sign --recipient jolagunapu@uide.edu.ec doc_no_cifrado.txt #Encrypt and sign document in a single file
gpg --output doc_cifrado_y_firmado_descifrado_y_validado.txt --decrypt MICOMPA_doc_cifrado_y_firmado.txt #Decrypt and verify partner's encrypted and signed document
cat doc_cifrado_y_firmado_descifrado_y_validado.txt #Display decrypted and validated document content