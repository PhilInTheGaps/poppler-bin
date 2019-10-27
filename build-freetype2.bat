echo "Building freetype2 ..."

set PKG_CONFIG_DIR=%CD:\=/%/pkg-config/bin/pkg-config.exe
set LIBPNG_DIR=%CD:\=/%/libpng/build/install
set ZLIB_DIR=%CD:\=/%/zlib/build/install

set PKG_CONFIG_OPTIONS=-DPKG_CONFIG_EXECUTABLE=%PKG_CONFIG_DIR%
set LIBPNG_OPTIONS=-DPNG_PNG_INCLUDE_DIR=%LIBPNG_DIR%/include -DPNG_LIBRARY=%LIBPNG_DIR%/lib/libpng.a
set ZLIB_OPTIONS=-DZLIB_INCLUDE_DIR=%ZLIB_DIR%/include -DZLIB_LIBRARY=%ZLIB_DIR%/lib/libzlib.dll.a

cd freetype2
mkdir build
cd build

cmake .. -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=install -DCMAKE_DISABLE_FIND_PACKAGE_HarfBuzz=TRUE %LIBPNG_OPTIONS% %ZLIB_OPTIONS% %PKG_CONFIG_OPTIONS% -DCMAKE_SH="CMAKE_SH-NOTFOUND"

mingw32-make
mingw32-make install

cd ..\..