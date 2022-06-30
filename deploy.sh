#!/bin/bash

# Factorio support zip packages as mods. This will be cleaner then rsyncing.

# MacOS shit:

#OIFS="$IFS"
#IFS=$'\n'
# Bash debug:
# + mv /tmp/ics-challenge-factorio_0.0.1.zip '~/Library/Application' Support/factorio/mods/i
# mv: Support/factorio/mods/ is not a directory
# ~ not resolving - Use eval

[[ ! -d ./venv/ ]] && echo "Make sure the Python Virtualenv exists"

JQ=$(jq --version > /dev/null 2> /dev/null; echo $?)
[[ ${JQ} != 0 ]] && echo "Please install jq"

VERSION=$(jq -r .version info.json)
MOD_BASE="ics-challenge-factorio"
OS=$(uname -s)

[[ ${OS} == "Darwin" ]] && MOD_DIR="~/Library/ApplicationSupport/factorio/mods/"
[[ ${OS} == "Linux" ]] && MOD_DIR="~/.factorio/mods/"

# Figure out changelog format
##./venv/bin/gitchangelog > changelog.txt

# rsync -v -r --delete --exclude venv --exclude .git\* --exclude README.md --exclude images --exclude deploy.sh ../ics-challenge-factorio_${VERSION} ~/.factorio/mods/
cd ../
zip -v -r /tmp/${MOD_BASE}_${VERSION}.zip ${MOD_BASE} -x ${MOD_BASE}/venv/\* ${MOD_BASE}/.git\* ${MOD_BASE}/README.md ${MOD_BASE}/images\* ${MOD_BASE}/deploy.sh
eval mv /tmp/${MOD_BASE}_${VERSION}.zip ${MOD_DIR}
