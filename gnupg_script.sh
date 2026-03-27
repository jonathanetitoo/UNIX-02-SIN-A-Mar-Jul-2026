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
echo "te quiero gei" > doc_no_cifrado.txt # create a file with a message
gpg --output doc_cifrado.txt --encrypt --recipient FF6770C528E2BF386F256480BF1F26A3D2143F6E doc_no_cifrado.txt # encrypt the file with the previously created message
gpg --decrypt Ashley_doc_cifrado.txt # decrypt the encrypted file 