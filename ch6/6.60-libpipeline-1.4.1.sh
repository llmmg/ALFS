FILENAME=6.60-libpipeline-1.4.1.sh
NAME=libpipeline

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


PKG_CONFIG_PATH=/tools/lib/pkgconfig ./configure --prefix=/usr
make
make install
cd $LFS/sources
rm -rf $NAME*