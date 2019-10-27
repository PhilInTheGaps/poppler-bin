echo "Building libjpeg-turbo ..."

cd libjpeg-turbo
mkdir build
cd build

cmake .. -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=install -DCMAKE_ASM_NASM_COMPILER=yasm.exe
mingw32-make
mingw32-make install

cd ..\..