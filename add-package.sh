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

sd "!!NAME!!" "$APP" "$APP"/**
sd "!!VERSION!!" "$VERSION" "$APP"/**
sd "!!DESC!!" "$DESC" "$APP"/**
sd "!!CHECKSUM!!" "$CHECKSUM" "$APP"/**

git add .
git commit -m "Add $APP $VERSION"
git push

choco-remote-deploy "$APP"
