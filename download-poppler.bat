echo "Cloning Poppler git ..."

set POPPLER_VERSION=poppler-0.87.0

echo "https://gitlab.freedesktop.org/poppler/poppler"

git clone https://gitlab.freedesktop.org/poppler/poppler || EXIT /B 1
cd poppler || EXIT /B 1
git checkout tags/%POPPLER_VERSION% || EXIT /B 1
cd ..

echo "Cloning Poppler tests ..."
echo "https://gitlab.freedesktop.org/poppler/test"

git clone https://gitlab.freedesktop.org/poppler/test || EXIT /B 1
