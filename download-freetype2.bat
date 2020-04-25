echo "Cloning freetype2 git ..."

set FREETYPE_VERSION=VER-2-10-1

echo "https://git.savannah.gnu.org/git/freetype/freetype2.git"

git clone https://git.savannah.gnu.org/git/freetype/freetype2.git || EXIT /B 1
cd freetype2 || EXIT /B 1
git checkout tags/%FREETYPE_VERSION% || EXIT /B 1
cd ..