FILENAME=6.56-less-481.sh
NAME=less

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


./configure --prefix=/usr --sysconfdir=/etc
make
make install
cd $LFS/sources
rm -rf $NAME*