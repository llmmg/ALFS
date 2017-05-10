FILENAME=5.36-changing-ownership.sh
NAME=changing

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


chown -R root:root $LFS/tools
cd $LFS/sources
rm -rf $NAME*