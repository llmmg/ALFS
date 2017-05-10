#Create a new partition on the given drive

echo "Creating partition on "$1

#verify that the given dev isnt the os drive
#get where os is mounted
MY_PATH=$(mount | grep " on / " | cut -d " " -f 1)

if [[ $MY_PATH == /dev/$1 ]]; then
    printf "WARNING!!!! given path is the directory of current installed os \n"
    printf "OS dev is: $MY_PATH \n"
else
    echo "$1 is correct"
    sudo mkfs.ext4 /dev/$1
fi
