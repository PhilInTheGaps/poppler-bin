echo "Packing artifacts ..."

mkdir release
cd release
mkdir bin
mkdir include
mkdir lib
cd ..


xcopy cairo\include release\include\cairo\
xcopy cairo\include\fontconfig release\include\fontconfig\
xcopy cairo\lib release\lib\ /s /e

copy freeglut\build\install\bin\libfreeglut.dll release\bin\libfreeglut.dll
xcopy freeglut\include\GL release\include\GL\
xcopy freeglut\build\lib release\lib\

copy freetype2\build\install\lib\freetype.a release\lib\freetype.a
xcopy freetype2\build\install\include\freetype2 release\include\ /s /e

copy libjpeg-turbo\build\install\bin\libjpeg-62.dll release\bin\libjpeg-62.dll
copy libjpeg-turbo\build\install\bin\libturbojpeg.dll release\bin\libturbojpeg.dll
xcopy libjpeg-turbo\build\install\include release\include\libjpeg-turbo\ /s /e
copy libjpeg-turbo\build\install\lib\libjpeg.a release\lib\libjpeg.a
copy libjpeg-turbo\build\install\lib\libjpeg.dll.a release\lib\libjpeg.dll.a
copy libjpeg-turbo\build\install\lib\libturbojpeg.a release\lib\libturbojpeg.a
copy libjpeg-turbo\build\install\lib\libturbojpeg.dll.a release\lib\libturbojpeg.dll.a

copy libpng\build\install\bin\libpng16.dll release\bin\libpng16.dll
xcopy libpn\build\install\include release\include\libpng\ /s /e
copy libpng\build\install\lib\libpng16.a release\lib\libpng16.a
copy libpng\build\install\lib\libpng16.dll.a release\lib\libpng16.dll.a
copy libpng\build\install\lib\libpng.a release\lib\libpng.a
copy libpng\build\install\lib\libpng.dll.a release\lib\libpng.dll.a

copy libtiff\install\bin\libtiff.dll release\bin\libtiff.dll
copy libtiff\install\bin\libtiffxx.dll release\bin\libtiffxx.dll
xcopy libtiff\install\include release\include\libtiff\ /s /e
copy \libtiff\install\lib\libtiff.dll.a release\lib\libtiff.dll.a
copy \libtiff\install\lib\libtiffxx.dll.a release\lib\libtiffxx.dll.a

copy openjpeg\build\install\bin\libopenjp2.dll release\bin\libopenjp2.dll
xcopy openjpeg\build\install\include release\include\ /s /e
copy openjpeg\build\install\lib\libopenjp2.dll.a release\lib\libopenjp2.dll.a

copy zlib\build\install\bin\libzlib.dll release\bin\libzlib.dll
xcopy zlib\build\install\include release\include\zlib\ /s /e
xcopy zlib\build\install\lib release\lib\ /s /e

copy poppler\build\install\bin\libpoppler-92.dll release\bin\libpoppler-92.dll
copy poppler\build\install\bin\libpoppler-qt5-1.dll release\bin\libpoppler-qt5-1.dll
xcopy poppler\build\install\include release\include\ /s /e
copy poppler\build\install\lib\libpoppler.dll.a release\lib\libpoppler.dll.a
copy poppler\build\install\lib\libpoppler-qt5.dll.a release\lib\libpoppler-qt5.dll.a


cd release

if defined COMPILER_NAME (
  7z a poppler-%COMPILER_NAME%.zip .
) else (
  7z a poppler.zip .
)

cd ..