FILENAME=5.27-make-4.2.1.sh
NAME=make

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


./configure --prefix=/tools --without-guile
make
make install
cd $LFS/sources
rm -rf $NAME*