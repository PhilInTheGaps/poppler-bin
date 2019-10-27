echo "Building zlib ..."

cd zlib
mkdir build
cd build

cmake .. -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=install
mingw32-make
mingw32-make install

cd ..\..