FILENAME=6.13-binutils-2.27.sh
NAME=binutils

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


expect -c "spawn ls"
spawn ls
mkdir -v build
cd       build
../configure --prefix=/usr   \
             --enable-shared \
             --disable-werror
make tooldir=/usr
make tooldir=/usr install
cd $LFS/sources
rm -rf $NAME*