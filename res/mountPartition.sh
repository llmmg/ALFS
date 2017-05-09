## mount new partition on given device

if [[ $LFS == '/mnt/lfs' ]]; then
    echo "LFS var is ok"
    echo "LFS var is ok" > logFiles/mountPartLog
else
    printf "LFS var not set. Please \n type: export LFS=/mnt/lfs and\n re-launch this script" 
    echo "ERROR lfs var not set" > logFiles/mountPartLog
    exit -1
fi

sudo mkdir -pv $LFS
sudo mount -v -t ext4 /dev/$1 $LFS

#mkdir -pv $LFS
#mount -v -t ext4 /dev/<xxx> $LFS
#mkdir -v $LFS/usr
#mount -v -t ext4 /dev/<yyy> $LFS/usr
