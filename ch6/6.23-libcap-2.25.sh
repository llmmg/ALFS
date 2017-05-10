FILENAME=6.23-libcap-2.25.sh
NAME=libcap

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


sed -i '/install.*STALIBNAME/d' libcap/Makefile
make
make RAISE_SETFCAP=no prefix=/usr install
chmod -v 755 /usr/lib/libcap.so
mv -v /usr/lib/libcap.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libcap.so) /usr/lib/libcap.so
cd $LFS/sources
rm -rf $NAME*