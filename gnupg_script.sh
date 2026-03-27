#--------------------------
#Block A
#--------------------------
uname -a #It provided information about the computer (architecture, OS).
which gpg #Provides the location of the GPG binary.
gpg --version #Give the version and additional information.
gpg --full-generate-key #It allows you to generate the public and private key. 

#--------------------------
#Block B
#--------------------------

gpg --list-keys #List the generated public keys, the User identifier, and the key expiration date.
gpg --armor --export cesar.arciniegas.mejia4@gmail.com> my_key_publicaa.asc #Export the keys
#The ">" redirects external output to text output
#"--armor converts binary to text-readable text"
gpg --list-secret-keys --keyid-format=long #Allows listing the private GPG key
gpg --armor --export-secret-keys 01EE56537872D793 #Export the secret key by specifying the hash of the corresponding keys.
gpg --import mi_llave_publica.asc #This command allows importing my partner's pub key

#--------------------------
#Block C
#--------------------------

$ echo "Te amo ariel"> doc_no_cifrado.txt #We created an unencrypted text file. The "$"" sign means regular user, while the "#" sign means superuser.
#Echo writes the text to be displayed to standard output. But in this case, it redirects to a .txt file using the ">"

#To verify the creation and content of the document we use:
ls 
cat xxxxxxxxxx

gpg --output cifrado_doc.txt --encrypt --recipient 6C6D7179B498A78979F103591EFC06CF0E3DBE76 doc_no_cifrado.txt #encrypts a file using a specific recipient's public key so that no one else can read it, saving the result to "encrypted_doc.txt"
gpg --decrypt MICOMPAAriel_doc_cifrado.txt #Decrypt the encrypted file using the protected key (1-8) and display the contents on the terminal's standard output.

#--------------------------
#Block D
#--------------------------
