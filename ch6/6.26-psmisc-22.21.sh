FILENAME=6.26-psmisc-22.21.sh
NAME=psmisc

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
mv -v /usr/bin/fuser   /bin
mv -v /usr/bin/killall /bin

cd $LFS/sources
rm -rf $NAME*