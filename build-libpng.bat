echo "Building libpng ..."

set ZLIB_DIR=%CD:\=/%/zlib/build/install

cd libpng
mkdir build
cd build

cmake .. -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=install -DZLIB_INCLUDE_DIR=%ZLIB_DIR%/include -DZLIB_LIBRARY=%ZLIB_DIR%/lib/libzlib.dll.a -DCMAKE_SH="CMAKE_SH-NOTFOUND"
mingw32-make
mingw32-make install

cd ..\..