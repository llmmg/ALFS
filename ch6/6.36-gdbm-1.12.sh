FILENAME=6.36-gdbm-1.12.sh
NAME=gdbm

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


./configure --prefix=/usr \
            --disable-static \
            --enable-libgdbm-compat
make
make install			
cd $LFS/sources
rm -rf $NAME*