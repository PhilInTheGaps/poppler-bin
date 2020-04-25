echo "Building openjpeg ..."

set ZLIB_DIR=%CD:\=/%/zlib/build/install
set LIBTIFF_DIR=%CD:\=/%/libtiff/install

cd openjpeg || EXIT /B 1
mkdir build
cd build

set LIBTIFF_OPTIONS=-DTIFF_LIBRARY=%LIBTIFF_DIR%/lib/libtiff.dll.a -DTIFF_INCLUDE_DIR=%LIBTIFF_DIR%/include
set ZLIB_OPTIONS=-DZLIB_INCLUDE_DIR=%ZLIB_DIR%/include -DZLIB_LIBRARY=%ZLIB_DIR%/lib/libzlib.dll.a

cmake .. -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=install -DBUILD_THIRDPARTY=1 %ZLIB_OPTIONS% %LIBTIFF_OPTIONS% -DCMAKE_SH="CMAKE_SH-NOTFOUND" || EXIT /B 1

mingw32-make -j%NUMBER_OF_PROCESSORS% || EXIT /B 1
mingw32-make install || EXIT /B 1

cd ..\..