FILENAME=5.25-gzip-1.8.sh
NAME=gzip

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