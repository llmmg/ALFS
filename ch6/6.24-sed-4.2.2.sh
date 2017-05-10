FILENAME=6.24-sed-4.2.2.sh
NAME=sed

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


./configure --prefix=/usr --bindir=/bin --htmldir=/usr/share/doc/sed-4.2.2
make
make html
make install
make -C doc install-html
cd $LFS/sources
rm -rf $NAME*