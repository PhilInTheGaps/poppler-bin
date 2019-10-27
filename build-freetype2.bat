echo "Building freetype2 ..."

set PKG_CONFIG_DIR=%CD:\=/%/pkg-config/bin/pkg-config.exe
set PKG_CONFIG_OPTIONS=-DPKG_CONFIG_EXECUTABLE=%PKG_CONFIG_DIR%

cd freetype2
mkdir build
cd build

cmake .. -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=install -DCMAKE_DISABLE_FIND_PACKAGE_HarfBuzz=TRUE %PKG_CONFIG_OPTIONS% -DCMAKE_SH="CMAKE_SH-NOTFOUND"

mingw32-make
mingw32-make install

cd ..\..