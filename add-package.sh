#!/usr/bin/env bash

set -e

APP="$1"
VERSION="$2"
DISTFOLDER="$3"
GORELEASER="$4"

DESC=$(yq -p=yaml -o=json "$GORELEASER" | jq -rc .scoop.description)
ZIPFILE="$DISTFOLDER/${APP}_${VERSION}_windows_amd64.zip"
CHECKSUM=$(shasum -a 256 "$ZIPFILE" | awk '{print $1}')

rm -rf "$APP"
cp -r "_template" "$APP"
mv "$APP/_template.nuspec" "$APP/$APP.nuspec"

sd "!!NAME!!" "$APP" "$APP/$APP.nuspec"
sd "!!VERSION!!" "$VERSION" "$APP/$APP.nuspec"
sd "!!DESC!!" "$DESC" "$APP/$APP.nuspec"

sd "!!NAME!!" "$APP" "$APP/update.ps1"

sd "!!NAME!!" "$APP" "$APP/tools/chocolateyInstall.ps1"
sd "!!VERSION!!" "$VERSION" "$APP/tools/chocolateyInstall.ps1"
sd "!!CHECKSUM!!" "$CHECKSUM" "$APP/tools/chocolateyInstall.ps1"

git add .
git commit -m "Add $APP $VERSION"
git push

docker build -t choco-deploy:local .
docker run -it --rm -v "$PWD/$APP:/app" -w "/app" -e "CHOCOLATEY_KEY=${CHOCOLATEY_KEY}" choco-deploy:local /usr/bin/publish.sh
