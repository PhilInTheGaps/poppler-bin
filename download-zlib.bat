echo "Cloning zlib git ..."

set ZLIB_VERSION=v1.2.11

echo "https://github.com/madler/zlib"

git clone https://github.com/madler/zlib || EXIT /B 1
cd zlib || EXIT /B 1
git checkout tags/%ZLIB_VERSION% || EXIT /B 1
cd ..