uname -a # Gives information about the system
which gpg # location of the gpg binary
gpg --version # shows gpg version and info
gpg --full-generate-key # generate public and private key
gpg --list-keys # list available public keys
gpg --armor --export # export key
gpg --list-secret-keys --keyid-format=long # list and view private keys
gpg --armor --export-secret-keys XXXXXXXX # export private key and convert it to text for copying
gpg --armor --export camiloscas.30.lascano@gmail.com > mi_llave_publica.asc # export public key
gpg --import Ashley.asc # import Ashley's public key from Ashley.asc file
gpg --list-keys # list available public keys
echo "te quiero gei" > doc_no_cifrado.txt # create a file with a message
gpg --output doc_cifrado.txt --encrypt --recipient FF6770C528E2BF386F256480BF1F26A3D2143F6E doc_no_cifrado.txt # encrypt the file with the previously created message
gpg --decrypt Ashley_doc_cifrado.txt # decrypt the encrypted file 
gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt #the file is signed using clearsign
ls #see what files and directories are available
cat doc_no_cifrado_firmado.txt #displays the contents of the file doc_no_cifrado_firmado.txt in the terminal
gpg --verify Ashley_doc_no_cifrado_firmado.txt #used to verify the digital signature of the file Ashley_doc_no_cifrado_firmado.txt.
gpg --edit-key XXXXXXXXXXXXXXXXXXXXXX #is used to open the key editing menu for the specified GPG key
gpg --sign-key XXXXXXXXXXX #is used to sign another person’s GPG public key
gpg --verify Ashley_doc_no_cifrado_firmado.txt #used to verify the digital signature of the file Ashley_doc_no_cifrado_firmado.txt.
gpg --output doc_no_cifrado_firmado_binario.txt --sign doc_no_cifrado.txt #is used to sign the file in binary format
gpg --verify Ashley_doc_no_cifrado_firmado_binario.txt #is used to verify the digital signature of the binary signed file
gpg --output firma_separada_doc_no_cifrado.sig --detach-sign doc_no_cifrado.txt #is used to sign the document and separate the signature from the document
gpg --verify Ashley_firma_separada_doc_no_cifrado.sig Ashley_doc_no_cifrado.txt #is used to verify a detached signature.
gpg --output doc_cifrado_y_firmado.txt --encrypt --sign --recipient XXXXXXX doc_no_cifrado.txt #is used to encrypt and sign a file.
gpg --output doc_cifrado_y_firmado_descifrado_y_validado.txt --decrypt Ashley_doc_cifrado_y_firmado.txt #uses GPG to decrypt the file Ashley_doc_cifrado_y_firmado.txt and save the result as doc_cifrado_y_firmado_descifrado_y_validado.txt.
$ cat doc_cifrado_y_firmado_descifrado_y_validado.txt #Display the contents of the decrypted and verified file
