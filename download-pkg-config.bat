echo "Downloading pkg-config-lite ..."

set PKG_CONFIG_LITE_VERSION=0.28-1

echo https://netcologne.dl.sourceforge.net/project/pkgconfiglite/%PKG_CONFIG_LITE_VERSION%/pkg-config-lite-%PKG_CONFIG_LITE_VERSION%_bin-win32.zip

curl -L -o pkg-config.zip https://netcologne.dl.sourceforge.net/project/pkgconfiglite/%PKG_CONFIG_LITE_VERSION%/pkg-config-lite-%PKG_CONFIG_LITE_VERSION%_bin-win32.zip || EXIT /B 1
7z x pkg-config.zip || EXIT /B 1

move pkg-config-lite* pkg-config || EXIT /B 1