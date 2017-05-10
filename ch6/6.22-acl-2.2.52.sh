FILENAME=6.22-acl-2.2.52.sh
NAME=acl

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


mv -v /usr/lib/libattr.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libattr.so) /usr/lib/libattr.so
sed -i "s:| sed.*::g" test/{sbits-restore,cp,misc}.test
sed -i -e "/TABS-1;/a if (x > (TABS-1)) x = (TABS-1);" \
    libacl/__acl_to_any_text.c
./configure --prefix=/usr    \
            --bindir=/bin    \
            --disable-static \
            --libexecdir=/usr/lib
make
make install install-dev install-lib
chmod -v 755 /usr/lib/libacl.so
mv -v /usr/lib/libacl.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libacl.so) /usr/lib/libacl.so
cd $LFS/sources
rm -rf $NAME*