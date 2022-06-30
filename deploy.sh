#!/bin/bash

# Factorio support zip packages as mods. This will be cleaner then rsyncing.


VERSION=$(jq -r .version info.json)

# Figure out changelog format
##./venv/bin/gitchangelog > changelog.txt

# rsync -v -r --delete --exclude venv --exclude .git\* --exclude README.md --exclude images --exclude deploy.sh ../ics-challenge-factorio_${VERSION} ~/.factorio/mods/
cd ../
zip -v -r /tmp/ics-challenge-factorio_${VERSION}.zip ics-challenge-factorio -x ics-challenge-factorio/venv/\* ics-challenge-factorio/.git\* ics-challenge-factorio/README.md ics-challenge-factorio/images\* ics-challenge-factorio/deploy.sh
mv /tmp/ics-challenge-factorio_${VERSION}.zip ~/.factorio/mods/
