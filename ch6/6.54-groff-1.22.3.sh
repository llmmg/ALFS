FILENAME=6.54-groff-1.22.3.sh
NAME=groff

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


PAGE=<paper_size> ./configure --prefix=/usr
make
make install
cd $LFS/sources
rm -rf $NAME*