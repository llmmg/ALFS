FILENAME=6.52-gawk-4.1.3.sh
NAME=gawk

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


./configure --prefix=/usr
make
make install
mkdir -v /usr/share/doc/gawk-4.1.3
cp    -v doc/{awkforai.txt,*.{eps,pdf,jpg}} /usr/share/doc/gawk-4.1.3
cd $LFS/sources
rm -rf $NAME*