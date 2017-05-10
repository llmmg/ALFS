FILENAME=5.18-coreutils-8.25.sh
NAME=coreutils

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


./configure --prefix=/tools --enable-install-program=hostname
make
make install
cd $LFS/sources
rm -rf $NAME*