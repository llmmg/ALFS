FILENAME=6.58-iproute2-4.7.0.sh
NAME=iproute2

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


sed -i /ARPD/d Makefile
sed -i 's/arpd.8//' man/man8/Makefile
rm -v doc/arpd.sgml
sed -i 's/m_ipt.o//' tc/Makefile
make
make DOCDIR=/usr/share/doc/iproute2-4.7.0 install
cd $LFS/sources
rm -rf $NAME*