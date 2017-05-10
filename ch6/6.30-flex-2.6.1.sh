FILENAME=6.30-flex-2.6.1.sh
NAME=flex

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


./configure --prefix=/usr --docdir=/usr/share/doc/flex-2.6.1
make
make install
ln -sv flex /usr/bin/lex

cd $LFS/sources
rm -rf $NAME*