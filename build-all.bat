call build-zlib.bat || EXIT /B 1
call build-libjpeg-turbo.bat || EXIT /B 1
call build-glut.bat || EXIT /B 1
call build-libtiff.bat || EXIT /B 1
call build-openjpeg.bat || EXIT /B 1
call build-libpng.bat || EXIT /B 1
call build-freetype2.bat || EXIT /B 1

call build-poppler.bat || EXIT /B 1