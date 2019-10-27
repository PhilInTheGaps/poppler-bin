echo "Building freeglut ..."


cd freeglut
mkdir build
cd build

cmake .. -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=install -DCMAKE_SH="CMAKE_SH-NOTFOUND"
mingw32-make
mingw32-make install

cd ..\..