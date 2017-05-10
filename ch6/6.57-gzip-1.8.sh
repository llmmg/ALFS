FILENAME=6.57-gzip-1.8.sh
NAME=gzip

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
mv -v /usr/bin/gzip /bin
cd $LFS/sources
rm -rf $NAME*