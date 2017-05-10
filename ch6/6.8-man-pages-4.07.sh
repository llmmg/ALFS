FILENAME=6.8-man-pages-4.07.sh
NAME=man

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


make install

cd $LFS/sources
rm -rf $NAME*