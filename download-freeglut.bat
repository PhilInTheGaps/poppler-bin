echo "Cloning freeglut repo ..."

set FREEGLUT_VERSION=FG_3_2_1

if "%MINGW_VERSION%" == "530_32" (
    echo "https://www.transmissionzero.co.uk/files/software/development/GLUT/freeglut-MinGW.zip"

    curl -L -o freeglut.zip https://www.transmissionzero.co.uk/files/software/development/GLUT/freeglut-MinGW.zip || EXIT /B 1
    7z x freeglut.zip || EXIT /B 1
) else (
    echo "https://github.com/dcnieho/FreeGLUT"

    git clone https://github.com/dcnieho/FreeGLUT freeglut || EXIT /B 1
    cd freeglut || EXIT /B 1
    git checkout tags/%FREEGLUT_VERSION% || EXIT /B 1
    cd ..
)