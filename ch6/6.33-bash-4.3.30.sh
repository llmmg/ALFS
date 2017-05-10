FILENAME=6.33-bash-4.3.30.sh
NAME=bash

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


patch -Np1 -i ../bash-4.3.30-upstream_fixes-3.patch
./configure --prefix=/usr                       \
            --docdir=/usr/share/doc/bash-4.3.30 \
            --without-bash-malloc               \
            --with-installed-readline
make
chown -Rv nobody .
make install
mv -vf /usr/bin/bash /bin
exec /bin/bash --login +h
cd $LFS/sources
rm -rf $NAME*