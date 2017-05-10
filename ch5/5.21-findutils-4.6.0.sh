FILENAME=5.21-findutils-4.6.0.sh
NAME=findutils

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


./configure --prefix=/tools
make
make install
cd $LFS/sources
rm -rf $NAME*