

groupadd lfs
useradd -s /bin/bash -g lfs -m -k /dev/null lfs

echo "Enter password for lfs user"

passwd lfs
chown -v lfs $LFS/tools
chown -v lfs $LFS/sources
su - lfs

