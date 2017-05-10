FILENAME=6.15.1-MPFR-3.1.4.sh
NAME=MPFR

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-3.1.4
make
make html
make install
make install-html
cd $LFS/sources
rm -rf $NAME*