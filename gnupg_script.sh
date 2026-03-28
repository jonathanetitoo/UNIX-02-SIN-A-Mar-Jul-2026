uname -a #daba información del ordenador 
wich gpg #nos indica donde esta el binario del gpg
gpg --version # te indica la versión del gpg
gpg --full-generate-key #genero una llave pública y privada 
gpg --list-keys
gpg --armor --export dave87821@gmail.com> mi_llave_publica.asc 
gpg --list-secret-keys --keyid-format=long
gpg --armor --export-secret-keys 5B89AD80508878A9
 echo "Amar es compartir">doc_no_cifrado.txt
 gpg --output doc_cifrado.txt --encrypt --recipient emilio.sebastianc@gmail.com doc_no_cifrado.txt
 gpg --decrypt doc_cifrado.txt
 gpg --output doc_cifrado.txt --clearsigns
 gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt
 gpg --verify meco_doc_no_cifrado_firmado.txt
 gpg --output doc_no_cifrado_firmado_bin.txt --sign doc_no_cifrado.txt
gpg --output doc_no_cifrado_firmado_detached.txt --sign doc_no_cifrado.txt
gpg --verify meco_doc_no_cifrado_firmado_bin.txt
gpg --verify meco_doc_no_cifrado_firmado_detached.txt
