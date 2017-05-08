echo "now you need to have the wget-list in the ALFS/res"
read -p "press key to continue" key
#bash res/chp3Intro.sh

mkdir -v $LFS/sources
chmod -v a+wt $LFS/sources

#download files
wget --input-file=wget-list --continue --directory-prefix=$LFS/sources

echo"now you need to put the md5sums file in $LFS/sources directory"
read -p "press key to continue" key

pushd $LFS/sources
md5sum -c md5sums
popd

echo "if ok, execute next script"
