FILENAME=5.17-bzip2-1.0.6.sh
NAME=bzip2

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


make
make PREFIX=/tools install
cd $LFS/sources
rm -rf $NAME*