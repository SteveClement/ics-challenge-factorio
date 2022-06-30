#!/bin/bash

VERSION="0.0.1"
rsync -v -r --delete --exclude .git\* --exclude README.md --exclude images --exclude deploy.sh ../ics-challenge-factorio_${VERSION} ~/.factorio/mods/
