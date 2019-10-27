echo "Running tests ..."

copy zlib\build\install\bin\libzlib.dll poppler\build\qt5\tests\libzlib.dll
copy libtiff\install\bin\libtiff.dll poppler\build\qt5\tests\libtiff.dll
copy openjpeg\build\install\bin\libopenjp2.dll poppler\build\qt5\tests\libopenjp2.dll

cd poppler\build

copy qt5\src\libpoppler-qt5-1.dll qt5\tests\libpoppler-qt5-1.dll
copy libpoppler-92.dll qt5\tests\libpoppler-92.dll

mingw32-make test

cd ..\..