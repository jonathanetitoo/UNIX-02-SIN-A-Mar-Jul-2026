uname -a #displays system information
which gpg #location of the gpg binary
gpg --version #provides version and additional information
gpg --full-generate-key #generate public and private keys
gpg --armor --export #export public key; armor displays the binary in a readable format
RSA #backward compatibility 
4096 bits #large enough for security but small enough for computers to verify the passphrase
gpg --list-secret-keys --keyid-format=long #list private keys
pull #propose changes
push #send the changes
gpg --armor --export-secret-keys XXXXXXXX #specify the hash of the corresponding keys
gpg --armor --export-secret-keys #export private key
gpg --armor --export slucina0406@gmail.com >mi_llave_pública.asc #export my public key and save it to a file
gpg --import PAULA tu_llave_pública.asc #import my partner's public key and create a name for that key
echo "esta" >doc_no_cifrado.txt #echo "esta": Prints the word "esta" in the terminal. >: Redirection operator. Instead of showing text on screen, it sends it to a file. doc_no_cifrado.txt: The name of the file to be created (or overwritten). 
gpg --output doc_cifrado.txt --encrypt --recipient xxxxxxxx doc_no_cifrado.txt #Uses GnuPG to encrypt doc_no_cifrado.txt using the recipient's key xxxxxxxx and saves the result to doc_cifrado.txt.

gpg --output doc_cifrado.txt --encrypt --recipient xxxxxxxx doc_no_cifrado.txt #Uses GnuPG to encrypt doc_no_cifrado.txt using the recipient's key xxxxxxxx and saves the result to doc_cifrado.txt.
gpg --decrypt PAULA_doc_cifrado.txt # decrypts my partner's file so I can see the message

gpg --decrypt PAULA_doc_cifrado.txt # decrypts my partner's file so I can see the message
web of trust #distributed system, not centralized in a company; I decide whom to trust to certify other keys
# 1 I prefer not to say
# 2 I do not trust
# 3 I trust marginally
# 4 I trust fully 
# Web of Trust: Trust level 4 (Full Trust) is assigned to Paula's key.
# This level is chosen because her identity and fingerprint authenticity 
# were personally verified during the lab session.
# 5 I trust ultimately (own keys)
gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt # Creates a cleartext digital signature on doc_no_cifrado.txt, allowing the content to be readable while ensuring authenticity and integrity in the output file.

(clearsign)

cat doc_no_cifrado_firmado.txt #displays on the screen the entire content of the file I just signed.
# # Superuser
# $ general user

gpg --verify PAULA_doc_no_cifrado_firmado.txt #Verifies that the file content has not been altered and that the signature is authentic.
gpg --edit-key XXXXX #Modify, manage, or examine the details of a specific GPG key.
gpg --sign -key XXXXXX #Officially validates the identity of a public key owner by applying your own digital signature to it.
gpg --output doc_no_cifrado_firmado_binario.txt --sign doc_no_cifrado.txt #Generates a compressed binary file containing the original message and its digital signature, making the content unreadable without using GPG.
gpg --verify PAULA_doc_no_cifrado_firmado_binario.txt #Checks the integrity and authorship of the binary file to confirm the content was not altered and the signature is authentic.
gpg --output firma_separada_doc_no_cifrado-sig --detach-sign doc_no_cifrado.txt #Creates a separate digital signature file containing only the signature of doc_no_cifrado.txt, leaving the original message unchanged and separate.
gpg --verify PAULA_firma_separada_doc_no_cifrado.sig PAULA_doc_no_cifrado.txt #Compares the detached signature file with the original document to confirm the text hasn't been modified and that Paula actually signed it.
gpg --output doc_cifrado_y_firmado.txt --encrypt --sign --recipient XXXXXX doc_no_cifrado.txt #Simultaneously encrypts and signs doc_no_cifrado.txt so only the recipient can read it and confirm the original author's identity.
gpg --output doc_cifrado_y_firmado_descifrado_y_validado.txt --decrypt PAULA_doc_cifrado_y_firmado.txt #Decrypts the content and verifies Paula's signature simultaneously, saving the clean original message in the new text file.
cat doc_cifrado_y_firmado_descifrado_y_validado.txt #Displays the final content of the decrypted and verified message to confirm the text is readable and correct.
