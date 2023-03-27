
export PREFIX="$HOME/mycross_cross"
export TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"


mkdir $PREFIX
cd $PREFIX
wget https://ftp.gnu.org/gnu/grub/grub-2.06.tar.xz
wget https://ftp.gnu.org/gnu/binutils/binutils-2.35.tar.gz





tar xvzf binutils-2.35.tar.gz
cd binutils-2.35
./configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror
make
make install
cd ..

tar -xvf grub-2.06.tar.xz
cd grub-2.06
./configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror
make
make install
cd ..
