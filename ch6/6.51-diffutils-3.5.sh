FILENAME=6.51-diffutils-3.5.sh
NAME=diffutils

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


sed -i 's:= @mkdir_p@:= /bin/mkdir -p:' po/Makefile.in.in
./configure --prefix=/usr
make
make install
cd $LFS/sources
rm -rf $NAME*