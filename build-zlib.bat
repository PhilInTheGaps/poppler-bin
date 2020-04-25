echo "Building zlib ..."

cd zlib
mkdir build
cd build

cmake .. -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=install -DCMAKE_SH="CMAKE_SH-NOTFOUND"
mingw32-make -j%NUMBER_OF_PROCESSORS%
mingw32-make install

cd ..\..