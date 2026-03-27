Bloque A — Preparación del entorno
uname -a # Displays detailed system information including kernel, OS, and architecture.
which gpg # Shows the full path where the GPG binary is installed.
gpg --version # Displays the version and information of GPG.
gpg --full-key-generate #I generate public and private keys.
gpg --list-keys # list the keys
gpg --armor --export #Export the keys
gpg --list-secret-keys --keyid-format=long # to list the private keys
Bloque B — Intercambio de llaves públicas
gpg --armor --export-secret-keys xxxxxx # export the private key
gpg --armor --export paulitagaby12@gmail.com >> mi_llave_publica.asc #To export my public key 
gpg --import Ariel.asc #To import my colleague's public key from the file
Bloque C — Cifrado y descifrado
echo "Chupiseñal" > doc_no_cifrado.text # To create the file and import the text
gpg --output doc_cifrado.text --encrypt --recipient buitronariel23@gmail.com doc_no_cifrado.text #Encrypt the contents of our file
gpg --decrypt doc_Arielcifrado.txt #It is used to decrypt my colleague's message.
Bloque D — Firma de documentos
gpg --output doc_no_cifrado_firmado.text --clearsign doc_no_cifrado.text # Creates a digitally signed version of the document in readable format, preserving the original content.
cat doc_no_cifrado_firmado.txt # It is verified that the document is located
gpg --verify doc_no_cifrado_firmado.txt #It is used to verify that the document is signed. 
gpg --output doc_no_cifrado_firmado_binario.text --sign doc_cifrado.text #This command is used to sign the document in binary format.
gpg --verify doc_no_cifrado_firmado_binario.txt # This command is used to verify that the text is correctly signed in binary format
gpg --output firma_separada_doc_no_cifrado.sig --detach-sign doc_no_cifrado.text #This command is used to sign the document, and we're going to separate the signature from the document.
gpg --verify firma_separada_doc_no_cifradoAriel.sig doc_no_cifrado.txt # It serves to verify my colleague's separate signature.
Bloque E — Web of Trust
gpg --edit-key buitronariel23@gmail.com #This command is used to give a vote of confidence
gpg --sign-key 3AFF0D971913C2E2 # This command is used to sign and certify trust
gpg --verify doc_no_cifrado_firmado.txt #Verifies again that the signed document is valid and unchanged.
Bloque F — Cifrado y firma simultáneos
gpg --output doc_cifrado_y_firmado.txt --encrypt --sign --recipient buitronariel23@gmail.com doc_no_cifrado.text #Encrypts and signs the file at the same time for confidentiality and authenticity.
gpg --output doc_cifrado_y_firmado_descifrado_y_validado.txt --decrypt doc_cifrado_y_firmadoAriel.txt # Decrypts the file and automatically verifies the signature.
cat doc_cifrado_y_firmado_descifrado_y_validado.txt # # Displays the final decrypted and verified content.