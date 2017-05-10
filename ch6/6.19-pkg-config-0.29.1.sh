FILENAME=6.19-pkg-config-0.29.1.sh
NAME=pkg

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


./configure --prefix=/usr              \
            --with-internal-glib       \
            --disable-compile-warnings \
            --disable-host-tool        \
            --docdir=/usr/share/doc/pkg-config-0.29.1
make
make install
cd $LFS/sources
rm -rf $NAME*