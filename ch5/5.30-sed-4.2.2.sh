FILENAME=5.30-sed-4.2.2.sh
NAME=sed

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