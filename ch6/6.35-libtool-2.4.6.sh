FILENAME=6.35-libtool-2.4.6.sh
NAME=libtool

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