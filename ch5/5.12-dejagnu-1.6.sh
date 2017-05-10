FILENAME=5.12-dejagnu-1.6.sh
NAME=dejagnu

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


./configure --prefix=/tools
make install
cd $LFS/sources
rm -rf $NAME*