FILENAME=6.44-automake-1.15.sh
NAME=automake

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


sed -i 's:/\\\${:/\\\$\\{:' bin/automake.in
./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.15
make
make install
cd $LFS/sources
rm -rf $NAME*