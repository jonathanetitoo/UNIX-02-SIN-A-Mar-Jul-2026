uname -a #It provides information about the computer on which the code is running.
which gpg # location of the gpg binary
gpg --version #gives the version and additional information
gpg --full-generate-key #I generate public and private keys
gpg --list-keys #Displays all public GPG keys in your local keyring, including user IDs, key IDs, and fingerprints
gpg --armor --export #Exports a GPG public key to an ASCII-encapsulated text format, instead of binary.
gpg --list-secret-keys --keyid-format=long #This command is used to list the secret (private) GPG keys available in your keyring, showing their IDs in the full, long format.
gpg --armor --export-secret-keys A472F6F558168284 #Export the secret key
gpg --import my_key_publicaa.asc #The public key matters
$ #It indicates that you are operating with a standard user account, without full privileges over the system
echo #It's the command to print text. Basically, it tells the system: "Repeat what I'm about to type."
"love you cesar" #This is the first argument. The text you want to be processed.
> #It's the redirection operator. Instead of displaying the result on the screen, it "pours" it into a file.
doc_no_cifrado.txt #This is the name of the file that will receive the text. If it doesn't exist, Linux creates it; if it exists, it deletes the old file and writes the new one.

