echo "Building freeglut ..."


if "%MINGW_VERSION%" == "530_32" (
    echo "Nothing to do, detected 32bit MinGW 5.3.0 ..."
) else (
    cd freeglut || EXIT /B 1
    mkdir build
    cd build

    cmake .. -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=install -DCMAKE_SH="CMAKE_SH-NOTFOUND" || EXIT /B 1
    mingw32-make -j%NUMBER_OF_PROCESSORS% || EXIT /B 1
    mingw32-make install || EXIT /B 1

    cd ..\..
) 
