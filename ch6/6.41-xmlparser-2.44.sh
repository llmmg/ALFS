FILENAME=6.41-xmlparser-2.44.sh
NAME=xmlparser

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


perl Makefile.PL
make
make install
cd $LFS/sources
rm -rf $NAME*