echo "Cloning libtiff repo ..."

set LIBTIFF_VERSION=v4.1.0

echo "https://gitlab.com/libtiff/libtiff"

git clone https://gitlab.com/libtiff/libtiff || EXIT /B 1
cd libtiff || EXIT /B 1
git checkout tags/%LIBTIFF_VERSION% || EXIT /B 1
cd ..
