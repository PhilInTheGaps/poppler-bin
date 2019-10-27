echo "Building libtiff ..."

cd zlib\build\install
set ZLIB_DIR=%CD:\=/%
cd ..\..\..

cd libjpeg-turbo
set LIBJPEG_DIR=%CD:\=/%/build/install
cd ..

cd freeglut
set GLUT_DIR=%CD:\=/%
cd ..


cd libtiff

cmake . -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=install -DZLIB_INCLUDE_DIR=%ZLIB_DIR%/include -DZLIB_LIBRARY=%ZLIB_DIR%/lib/libzlib.dll.a -DJPEG_INCLUDE_DIR=%LIBJPEG_DIR%/include -DJPEG_LIBRARY=%LIBJPEG_DIR%/lib/libjpeg.a -DOPENGL_LIBRARY_DIR=%GLUT_DIR%/build/install/lib -DGLUT_INCLUDE_DIR=%GLUT_DIR%/include
mingw32-make
mingw32-make install

cd ..