# === Bloque A — Environment preparation ===

uname -a # Shows system and OS information
which gpg # Locates the GPG binary executable path
gpg --version # Displays GPG version and supported algorithms
gpg --full-generate-key # Generates a new public and private key pair
gpg --armor --export # Exports the public key in ASCII armor format
gpg --list-keys # Lists all public keys in the public keyring
gpg --list-secret-keys --keyid-format=long # Lists all private keys with their long IDs

# === Bloque B — Public key exchange ===

gpg --armor --export-secret-keys XXXXXXXX # Exporting private keys.
gpg --armor --export buitronariel23@gmail.com > mi_llave_publica.asc # Exports my public key to an .asc file to share with my partner
gpg --import compa_llave_publica.asc #Imports my partner's public key into my keyring

# === Bloque C — Encryption and decryption ===

echo "este mensaje es secreto" > doc_no_cifrado.txt # Creates a plain text file with a secret message
gpg --output doc_cifrado.txt --encrypt --recipient paulitagaby12@gmail.com doc_no_cifrado.txt # Encrypts the text file using my partner's public key (email or hash)
gpg --decrypt paula_doc_cifrado.text.txt #Decrypts the file received from my partner and outputs the content

# === Bloque D — Signing of documents ===

# 1. Signature in plain text

gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt # Add clearsign signature to document
cat doc_no_cifrado_firmado.txt # verification of the created document
gpg --verify pau_doc_no_cifrado_firmado.text.txt # verification of my colleague's document

# 2. Binary signature

gpg --output doc_no_cifrado_firmado_binario.txt --sign doc_no_cifrado.txt # Sign the document in binary 
gpg --verify pau_doc_no_cifrado_firmado_binario.text.txt #The command is used to verify that my colleague's command is signed in binary format.

# 3. Separate signature

gpg --output firma_separada_doc_no_cifrado.sig --detach-sign doc_no_cifrado.txt #Add detached signature to document
gpg --verify pau_firma_separada_doc_no_cifrado.sig pau_doc_no_cifrado.text.txt #Verify partner's detached signature

# === Bloque E — Web of Trust ===

gpg --edit-key paulitagaby12@gmail.com #We entered the interactive menu and typed "trust".
gpg --sign-key XXXXXXX #We signed the key to certify our trust
gpg --verify pau_doc_no_cifrado_firmado.text.txt #We check again and see that the trust warning disappears

# === Bloque F — Simultaneous encryption and signatures ===

gpg --output doc_cifrado_y_firmado.txt --encrypt --sign --recipient paulitagaby12@gmail.com doc_no_cifrado.txt #We encrypt and sign the document in one step
gpg --output doc_cifrado_y_firmado_descifrado_y_validado.txt --decrypt pau_doc_cifrado_y_firmado.txt #Decrypt and verify final document
cat doc_cifrado_y_firmado_descifrado_y_validado.txt #Check the contents of the resulting file