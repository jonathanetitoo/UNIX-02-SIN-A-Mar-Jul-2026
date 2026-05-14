id # Displays real and effective user and group IDs
groups # Prints the names of the primary and supplementary groups for the current user
groups root # Prints the group memberships for the specific user "root"
id -u # Prints only the effective numeric user ID (UID)
id -g # Prints only the effective numeric group ID (GID)
id -G # Prints all numeric group IDs (GIDs) associated with the user
cat /etc/group | grep root # Searches for the "root" group definition within the configuration file
mkdir ~/proyecto_unix # Creates a new directory named "proyecto_unix" in the home folder
ls -la ~/proyecto_unix # Lists all files in the directory with detailed information, including hidden ones
groupadd desarrolladores # Creates a new standard group named "desarrolladores"
groupadd -g 2000 operaciones # Creates a group named "operaciones" with a specific GID of 2000
groupadd --system servicios_web # Creates a system group for service accounts with a low GID
grep -E "desarrolladores|operaciones|servicios_web" /etc/group # Verifies the creation of the specific groups in the group file, we can use "grep "desarrolladores\|operaciones\|servicios_web" /etc/group" too
grep "GID_MIN\|GID_MAX\|SYS_GID" /etc/login.defs # Retrieves the system's defined range for manual and system group IDs
usermod -aG desarrolladores $USER # Note: $USER is replaced by root. Adds root to the 'desarrolladores' group without removing current ones.
groupadd diseno # Creates a new group named 'diseno' in the system.
usermod -aG diseno $USER # Note: $USER is replaced by root. Appends the 'diseno' group to root's existing group memberships.
groupadd grupo_temporal # Creates a new group named 'grupo_temporal' for testing purposes.
usermod -aG grupo_temporal $USER # Note: $USER is replaced by root. Adds root to the 'grupo_temporal' group using the append flag.
id $USER # Note: $USER is replaced by root. Displays the UID, GID, and all associated groups for the root user.
usermod -G desarrolladores $USER # Note: $USER is replaced by root. Overwrites all supplementary groups for root, leaving only 'desarrolladores'.
id $USER # Note: $USER is replaced by root. Verifies the change, showing that previous supplementary groups were removed.