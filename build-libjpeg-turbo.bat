echo "Building libjpeg-turbo ..."

cd libjpeg-turbo || EXIT /B 1
mkdir build
cd build

cmake .. -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=install -DCMAKE_ASM_NASM_COMPILER=yasm.exe -DCMAKE_SH="CMAKE_SH-NOTFOUND" || EXIT /B 1
mingw32-make -j%NUMBER_OF_PROCESSORS% || EXIT /B 1
mingw32-make install || EXIT /B 1

cd ..\..