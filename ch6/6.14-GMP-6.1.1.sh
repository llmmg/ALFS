FILENAME=6.14-GMP-6.1.1.sh
NAME=GMP

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


./configure --prefix=/usr    \
            --enable-cxx     \
            --disable-static \
            --docdir=/usr/share/doc/gmp-6.1.1
make
make html
make install
make install-html
cd $LFS/sources
rm -rf $NAME*