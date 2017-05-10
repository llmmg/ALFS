FILENAME=6.3-package-management.sh
NAME=package

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


./configure --prefix=/usr/pkg/libfoo/1.1
make
make install
./configure --prefix=/usr
make
make DESTDIR=/usr/pkg/libfoo/1.1 install

cd $LFS/sources
rm -rf $NAME*