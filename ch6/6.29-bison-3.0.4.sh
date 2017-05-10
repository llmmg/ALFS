FILENAME=6.29-bison-3.0.4.sh
NAME=bison

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


./configure --prefix=/usr --docdir=/usr/share/doc/bison-3.0.4
make
make install
cd $LFS/sources
rm -rf $NAME*