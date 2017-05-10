FILENAME=6.27-iana-etc-2.30.sh
NAME=iana

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


make
make install

cd $LFS/sources
rm -rf $NAME*