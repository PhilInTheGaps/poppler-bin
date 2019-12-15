echo "Building libtiff ..."

set ZLIB_DIR=%CD:\=/%/zlib/build/install
set LIBJPEG_DIR=%CD:\=/%/libjpeg-turbo/build/install
set GLUT_DIR=%CD:\=/%/freeglut

if "%MINGW_VERSION%" == "530_32" (
    set GLUT_OPTIONS=-DOPENGL_LIBRARY_DIR=%GLUT_DIR%/lib -DGLUT_INCLUDE_DIR=%GLUT_DIR%/include
) else (
    set GLUT_OPTIONS=-DOPENGL_LIBRARY_DIR=%GLUT_DIR%/build/install/lib -DGLUT_INCLUDE_DIR=%GLUT_DIR%/include
)

cd libtiff

cmake . -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=install -DZLIB_INCLUDE_DIR=%ZLIB_DIR%/include -DZLIB_LIBRARY=%ZLIB_DIR%/lib/libzlib.dll.a -DJPEG_INCLUDE_DIR=%LIBJPEG_DIR%/include -DJPEG_LIBRARY=%LIBJPEG_DIR%/lib/libjpeg.a %GLUT_OPTIONS% -DCMAKE_SH="CMAKE_SH-NOTFOUND"
mingw32-make
mingw32-make install

cd ..
