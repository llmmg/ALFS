if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

bash res/createLfs_ToolsDir.sh
bash res/addLfsUsr.sh
bash res/setUpEnv.sh

echo "end of chp4!"
