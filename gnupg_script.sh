uname_a # Give the computer information
which gpg # Give the location of the gpg binary
gpg --version # It tells us the version of gpg and additional information
gpg --full-generate-key # To generate public key and private key
gpg --list-keys #To see the keys
gpg -armor --export # To export the keys
gpg --list-secret-keys --keyid-format=long # To list and view the private keys
gpg --armor --export-secret-keys HASH # Export your private key and convert it into text to copy
gpg --armor --export<ashley2007egmail.com> mi_llave_publica.asc #Export your public key
gpg --import CAMILLA.asc #Export a key from a file
echo "Tqm, Camillaaa">doc_no_cifrado.txt # The file is created and the text is redirected to a file
gpg --output doc_cifrado.txt --encrypt --recipient camiloscas.30.lascano@gmail.com doc_cifrado.txt # Encrypt the content and use the other person's public key
 gpg --decrypt doc_cifrado.txt # This command is used to decrypt an encrypted file.
 which gpg / gpg --version # Used to find where GPG is installed on your system.
 gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt #Use GNU Privacy Guard to digitally sign a text file; it does not encrypt the content, it only signs it.
 cat doc_no_cifrado_firmado.tx #
 gpg --verify doc_no_cifrado_firmado_binariocamilla.txt #