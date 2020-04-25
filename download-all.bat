echo "Downloading sources ..."

call download-freeglut.bat || EXIT /B 1
call download-freetype2.bat || EXIT /B 1
call download-libjpeg-turbo.bat || EXIT /B 1
call download-libpng.bat || EXIT /B 1
call download-libtiff.bat || EXIT /B 1
call download-openjpeg.bat || EXIT /B 1
call download-pkg-config.bat || EXIT /B 1
call download-poppler.bat || EXIT /B 1
call download-zlib.bat || EXIT /B 1