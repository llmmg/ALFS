##intro of chapter 3
# commands may need to be executed as root
# /!\ WARNING may need tests

mkdir -v $LFS/sources
chmod -v a+wt $LFS/sources

wget --input-file=wget-list --continue --directory-prefix=$LFS/sources


pushd $LFS/sources
md5sum -c md5sums
popd

