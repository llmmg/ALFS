FILENAME=5.16-bash-4.3.30.sh
NAME=bash

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


./configure --prefix=/tools --without-bash-malloc
make
make install
ln -sv bash /tools/bin/sh

cd $LFS/sources
rm -rf $NAME*