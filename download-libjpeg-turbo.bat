echo "Cloning libjpeg-turbo git ..."

set LIBJPEG_TURBO_VERSION=2.0.4

echo "https://github.com/libjpeg-turbo/libjpeg-turbo"

git clone https://github.com/libjpeg-turbo/libjpeg-turbo || EXIT /B 1
cd libjpeg-turbo || EXIT /B 1
git checkout tags/%LIBJPEG_TURBO_VERSION% || EXIT /B 1
cd ..
