## mount new partition on given device

if [ $LFS == '/mnt/lfs' ]; then
    echo "LFS var is ok"
else
    echo "LFS var not set,please,\n type: export LFS=/mnt/lfs and\n re-launch this script"
    exit 1
fi

sudo mkdir -pv $LFS
sudo mount -v -t ext4 /dev/$1 $LFS

#mkdir -pv $LFS
#mount -v -t ext4 /dev/<xxx> $LFS
#mkdir -v $LFS/usr
#mount -v -t ext4 /dev/<yyy> $LFS/usr
