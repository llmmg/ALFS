FILENAME=6.31-grep-6.25.sh
NAME=grep

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


./configure --prefix=/usr --bindir=/bin
make
make install
cd $LFS/sources
rm -rf $NAME*