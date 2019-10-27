echo "Building poppler ..."

cd openjpeg
set OPENJPEG_DIR=%CD:\=/%/build/install
cd ..

cd libjpeg-turbo
set LIBJPEG_DIR=%CD:\=/%/build/install
cd ..

cd libpng
set LIBPNG_DIR=%CD:\=/%/build/install
cd ..

cd libtiff
set LIBTIFF_DIR=%CD:\=/%/install
cd ..

cd cairo
set CAIRO_DIR=%CD:\=/%
cd ..

cd freetype2
set FREETYPE_DIR=%CD:\=/%
cd ..

cd zlib\build\install
set ZLIB_DIR=%CD:\=/%
cd ..\..\..

cd pkg-config
set PKG_CONFIG_DIR=%CD:\=/%/bin/pkg-config.exe
cd ..

cd poppler
mkdir build
cd build


set PKG_CONFIG_OPTIONS=-DPKG_CONFIG_EXECUTABLE=%PKG_CONFIG_DIR%

set FREETYPE_OPTIONS=-DFREETYPE_INCLUDE_DIR_freetype2=%FREETYPE_DIR%/include/freetype -DFREETYPE_INCLUDE_DIR_ft2build=%FREETYPE_DIR%/include -DFREETYPE_LIBRARY=%FREETYPE_DIR%/objs/freetype.a

set CAIRO_OPTIONS=-DCAIRO_INCLUDE_DIR=%CAIRO_DIR%/include -DCAIRO_LIBRARY=%CAIRO_DIR%/lib/libcairo.dll.a

set LIBJPEG_OPTIONS=-DJPEG_INCLUDE_DIR=%LIBJPEG_DIR%/include -DJPEG_LIBRARY=%LIBJPEG_DIR%/lib/libjpeg.a

set OPENJPEG_OPTIONS=-DOpenJPEG_DIR=%OPENJPEG_DIR%/lib/openjpeg-2.3

set LIBPNG_OPTIONS=-DPNG_PNG_INCLUDE_DIR=%LIBPNG_DIR%/include -DPNG_LIBRARY=%LIBPNG_DIR%/lib/libpng.a

set LIBTIFF_OPTIONS=-DTIFF_LIBRARY=%LIBTIFF_DIR%/lib/libtiff.dll.a -DTIFF_INCLUDE_DIR=%LIBTIFF_DIR%/include

set ZLIB_OPTIONS=-DZLIB_INCLUDE_DIR=%ZLIB_DIR%/include -DZLIB_LIBRARY=%ZLIB_DIR%/lib/libzlib.dll.a

set OPTIONAL_DISABLES=-DWITH_Iconv=False -DWITH_GLIB=False


cmake .. -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=install %OPTIONAL_DISABLES% %PKG_CONFIG_OPTIONS% %CAIRO_OPTIONS% %FREETYPE_OPTIONS% %ZLIB_OPTIONS% %LIBJPEG_OPTIONS% %OPENJPEG_OPTIONS% %LIBPNG_OPTIONS% %LIBTIFF_OPTIONS% -DCMAKE_SH="CMAKE_SH-NOTFOUND"

mingw32-make
mingw32-make install

copy qt5\src\libpoppler-qt5-1.dll qt5\tests\libpoppler-qt5-1.dll
copy libpoppler-92.dll qt5\tests\libpoppler-92.dll

cd ..\..

copy zlib\build\install\bin\libzlib.dll poppler\build\qt5\tests\libzlib.dll
copy libtiff\install\bin\libtiff.dll poppler\build\qt5\tests\libtiff.dll
copy openjpeg\build\install\bin\libopenjp2.dll poppler\build\qt5\tests\libopenjp2.dll

cd poppler\build

mingw32-make test

cd ..\..