#!/bin/sh
set -e -u -o pipefail
cd $GITHUB_WORKSPACE
sh -c "$*"