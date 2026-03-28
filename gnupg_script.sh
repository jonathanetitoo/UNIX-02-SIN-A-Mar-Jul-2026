#Bloque A- Praración del entorno 
uname -a # Gives information about the system
which gpg # location of the gpg binary
gpg --version # shows gpg version and info
gpg --full-generate-key # generate public and private key
gpg --list-keys # list available public keys
gpg --armor --export # export key
gpg --list-secret-keys --keyid-format=long # list and view private keys

#Bloque B-  Intercambio de llaves públicas
gpg --armor --export-secret-keys XXXXXXXX # export private key and convert it to text for copying
gpg --armor --export camiloscas.30.lascano@gmail.com > mi_llave_publica.asc # export public key
gpg --import Ashley.asc # import Ashley's public key from Ashley.asc file
gpg --list-keys # list available public keys

#Bloque C- Cifrado y descifrado
echo "te quiero gei" > doc_no_cifrado.txt # create a file with a message
gpg --output doc_cifrado.txt --encrypt --recipient FF6770C528E2BF386F256480BF1F26A3D2143F6E doc_no_cifrado.txt # encrypt the file with the previously created message
gpg --decrypt Ashley_doc_cifrado.txt # decrypt the encrypted file 

#Bloque D- Firma de documentos
gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt #the file is signed using clearsign
ls #see what files and directories are available
cat doc_no_cifrado_firmado.txt #displays the contents of the file doc_no_cifrado_firmado.txt in the terminal
gpg --verify Ashley_doc_no_cifrado_firmado.txt #used to verify the digital signature of the file Ashley_doc_no_cifrado_firmado.txt.
gpg --edit-key XXXXXXXXXXXXXXXXXXXXXX #is used to open the key editing menu for the specified GPG key



#Bloque E — Web of Trust


#Bloque F — Cifrado y firma simultáneos
