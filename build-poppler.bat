echo "Building poppler ..."

set OPENJPEG_DIR=%CD:\=/%/openjpeg/build/install

set LIBJPEG_DIR=%CD:\=/%/libjpeg-turbo/build/install

set LIBPNG_DIR=%CD:\=/%/libpng/build/install

set LIBTIFF_DIR=%CD:\=/%/libtiff/install

set CAIRO_DIR=%CD:\=/%/cairo

set FREETYPE_DIR=%CD:\=/%/freetype2/build/install

set ZLIB_DIR=%CD:\=/%/zlib/build/install

set PKG_CONFIG_DIR=%CD:\=/%/pkg-config/bin/pkg-config.exe


cd poppler
mkdir build
cd build


set PKG_CONFIG_OPTIONS=-DPKG_CONFIG_EXECUTABLE=%PKG_CONFIG_DIR%

set FREETYPE_OPTIONS=-DFREETYPE_INCLUDE_DIR_freetype2=%FREETYPE_DIR%/include/freetype2/freetype -DFREETYPE_INCLUDE_DIR_ft2build=%FREETYPE_DIR%/include/freetype2 -DFREETYPE_LIBRARY=%FREETYPE_DIR%/lib/libfreetype.a

set CAIRO_OPTIONS=-DCAIRO_INCLUDE_DIR=%CAIRO_DIR%/include -DCAIRO_LIBRARY=%CAIRO_DIR%/lib/libcairo.dll.a

set LIBJPEG_OPTIONS=-DJPEG_INCLUDE_DIR=%LIBJPEG_DIR%/include -DJPEG_LIBRARY=%LIBJPEG_DIR%/lib/libjpeg.a

set OPENJPEG_OPTIONS=-DOpenJPEG_DIR=%OPENJPEG_DIR%/lib/openjpeg-2.3

set LIBPNG_OPTIONS=-DPNG_PNG_INCLUDE_DIR=%LIBPNG_DIR%/include -DPNG_LIBRARY=%LIBPNG_DIR%/lib/libpng.a

set LIBTIFF_OPTIONS=-DTIFF_LIBRARY=%LIBTIFF_DIR%/lib/libtiff.dll.a -DTIFF_INCLUDE_DIR=%LIBTIFF_DIR%/include

set ZLIB_OPTIONS=-DZLIB_INCLUDE_DIR=%ZLIB_DIR%/include -DZLIB_LIBRARY=%ZLIB_DIR%/lib/libzlib.dll.a

set OPTIONAL_DISABLES=-DWITH_Iconv=False -DWITH_GLIB=False -DENABLE_LIBCURL=OFF


cmake .. -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=install %OPTIONAL_DISABLES% %PKG_CONFIG_OPTIONS% %CAIRO_OPTIONS% %FREETYPE_OPTIONS% %ZLIB_OPTIONS% %LIBJPEG_OPTIONS% %OPENJPEG_OPTIONS% %LIBPNG_OPTIONS% %LIBTIFF_OPTIONS% -DCMAKE_SH="CMAKE_SH-NOTFOUND" || EXIT /B 1

mingw32-make -j%NUMBER_OF_PROCESSORS% || EXIT /B 1
mingw32-make install || EXIT /B 1

cd ..\..
