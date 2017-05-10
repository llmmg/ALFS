FILENAME=6.28-m4-1.4.17.sh
NAME=m4

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