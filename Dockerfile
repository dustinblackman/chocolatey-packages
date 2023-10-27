FROM --platform=linux/amd64 chocolatey/choco:latest-linux

COPY ./publish.sh /usr/bin/
