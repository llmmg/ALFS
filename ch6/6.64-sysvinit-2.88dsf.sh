FILENAME=6.64-sysvinit-2.88dsf.sh
NAME=sysvinit

echo ""
echo "### ---------------------------"
echo "running file $FILENAME    ###"
echo "### ---------------------------"
cd $LFS/sources
echo "Extract file..."
tar xvf $NAME*.tar*
cd $NAME*


patch -Np1 -i ../sysvinit-2.88dsf-consolidated-1.patch
make -C src
make -C src install
cd $LFS/sources
rm -rf $NAME*