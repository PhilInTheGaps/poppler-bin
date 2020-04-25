echo "Cloning openjpeg git ..."

set OPENJPEG_VERSION=v2.3.1

echo "https://github.com/uclouvain/openjpeg"

git clone "https://github.com/uclouvain/openjpeg" || EXIT /B 1
cd openjpeg || EXIT /B 1
git checkout tags/%OPENJPEG_VERSION% || EXIT /B 1
cd ..
