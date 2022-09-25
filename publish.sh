#!/usr/bin/env bash

set -e

choco apikey --key "$CHOCOLATEY_KEY" --source https://push.chocolatey.org/
choco pack
choco push "$(ls | grep nupkg | head -n1)" --source https://push.chocolatey.org/
