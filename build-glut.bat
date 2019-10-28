echo "Building freeglut ..."


if "%MINGW_VERSION%" == "530_32" (
    echo "Nothing to do, detected 32bit MinGW 5.3.0 ..."
) else (
    cd freeglut
    mkdir build
    cd build

    cmake .. -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=install -DCMAKE_SH="CMAKE_SH-NOTFOUND"
    mingw32-make
    mingw32-make install

    cd ..\..
) 
