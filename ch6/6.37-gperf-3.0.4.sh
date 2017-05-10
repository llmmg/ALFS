FILENAME=6.37-gperf-3.0.4.sh
NAME=gperf

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.0.4
make
make -j1 check
make install
cd $LFS/sources
rm -rf $NAME*