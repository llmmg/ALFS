FILENAME=6.62-patch-2.7.5.sh
NAME=patch

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


./configure --prefix=/usr
make
make install
cd $LFS/sources
rm -rf $NAME*