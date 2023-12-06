#!/usr/bin/env bash

set -e

APP="$1"
VERSION="$2"
DISTFOLDER="$3"
GORELEASER="$4"

DESC=$(yq -p=yaml -o=json "$GORELEASER" | jq -rc '.scoops[0].description')
ZIPFILE="$DISTFOLDER/${APP}_${VERSION}_windows_amd64.zip"
CHECKSUM=$(shasum -a 256 "$ZIPFILE" | awk '{print $1}')

function replace_template() {
	grep -s -l "$1" "$APP"/* | xargs -L1 sd "$1" "$2"
	grep -s -l "$1" "$APP"/**/* | xargs -L1 sd "$1" "$2"
}

rm -rf "$APP"
cp -r "_template" "$APP"
mv "$APP/_template.nuspec" "$APP/$APP.nuspec"

replace_template "##NAME##" "$APP"
replace_template "##VERSION##" "$VERSION"
replace_template "##DESC##" "$DESC"
replace_template "##CHECKSUM##" "$CHECKSUM"

git add .
git commit -m "Add $APP $VERSION"
git push

choco-remote-deploy "$APP"
