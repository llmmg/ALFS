#Create a new partition on the given drive
#TODO: verify that the given dev isnt the os drive

echo "Creating partition on"$1
mkfs -v -t ext4 /dev/$1


