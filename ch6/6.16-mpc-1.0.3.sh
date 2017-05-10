FILENAME=6.16-mpc-1.0.3.sh
NAME=mpc

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.0.3
make
make html
make install
make install-html
cd $LFS/sources
rm -rf $NAME*