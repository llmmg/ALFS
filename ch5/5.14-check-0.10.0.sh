FILENAME=5.14-check-0.10.0.sh
NAME=check

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


PKG_CONFIG= ./configure --prefix=/tools
make
make install
cd $LFS/sources
rm -rf $NAME*