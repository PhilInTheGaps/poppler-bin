echo "Downloading sources ..."



echo "Downloading pkg-config-lite ..."
echo "https://netcologne.dl.sourceforge.net/project/pkgconfiglite/0.28-1/pkg-config-lite-0.28-1_bin-win32.zip"

curl -L -o pkg-config.zip https://netcologne.dl.sourceforge.net/project/pkgconfiglite/0.28-1/pkg-config-lite-0.28-1_bin-win32.zip
7z x pkg-config.zip

move pkg-config-lite* pkg-config



echo "Cloning zlib git ..."
echo "https://github.com/madler/zlib"

git clone https://github.com/madler/zlib
cd zlib
git checkout tags/v1.2.11
cd ..



echo "Cloning freetype2 git ..."
echo "https://git.savannah.gnu.org/git/freetype/freetype2.git"

git clone https://git.savannah.gnu.org/git/freetype/freetype2.git
cd freetype2
git checkout tags/VER-2-10-1
cd ..



echo "Cloning openjpeg git ..."
echo "https://github.com/uclouvain/openjpeg"

git clone "https://github.com/uclouvain/openjpeg"
cd openjpeg
git checkout tags/v2.3.1
cd ..



echo "Cloning libjpeg-turbo git ..."
echo "https://github.com/libjpeg-turbo/libjpeg-turbo"

git clone https://github.com/libjpeg-turbo/libjpeg-turbo
cd libjpeg-turbo
git checkout tags/2.0.3
cd ..



echo "Cloning libpng ..."
echo "https://git.code.sf.net/p/libpng/code"

git clone https://git.code.sf.net/p/libpng/code libpng
cd libpng
git checkout tags/v1.6.37
cd ..



echo "Cloning libtiff repo ..."
echo "https://gitlab.com/libtiff/libtiff"

git clone https://gitlab.com/libtiff/libtiff
cd libtiff
git checkout tags/v4.0.10
cd ..



echo "Cloning freeglut repo ..."
echo "https://github.com/dcnieho/FreeGLUT"

git clone https://github.com/dcnieho/FreeGLUT freeglut
cd freeglut
git checkout tags/FG_3_2_1
cd ..



echo "Cloning Poppler git ..."
echo "https://gitlab.freedesktop.org/poppler/poppler"

git clone https://gitlab.freedesktop.org/poppler/poppler
cd poppler
git checkout tags/poppler-0.82.0
cd ..



echo "Cloning Poppler tests ..."
echo "https://gitlab.freedesktop.org/poppler/test"

git clone https://gitlab.freedesktop.org/poppler/test