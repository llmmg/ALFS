## mount new partition

mkdir -pv $LFS
mount -v -t ext4 /dev/$1

#mkdir -pv $LFS
#mount -v -t ext4 /dev/<xxx> $LFS
#mkdir -v $LFS/usr
#mount -v -t ext4 /dev/<yyy> $LFS/usr
