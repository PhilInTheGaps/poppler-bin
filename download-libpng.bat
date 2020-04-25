echo "Cloning libpng ..."

set LIBPNG_VERSION=v1.6.37

echo "https://git.code.sf.net/p/libpng/code"

git clone https://git.code.sf.net/p/libpng/code libpng || EXIT /B 1
cd libpng || EXIT /B 1
git checkout tags/%LIBPNG_VERSION% || EXIT /B 1
cd ..
