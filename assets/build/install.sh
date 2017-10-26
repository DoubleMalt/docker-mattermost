#!/bin/bash
set -e

apt-get install curl

echo "Installing Mattermost..."
cd ${MATTERMOST_HOME}
curl -sSL https://releases.mattermost.com/${MATTERMOST_VERSION}/mattermost-team-${MATTERMOST_VERSION}-linux-amd64.tar.gz | tar -xvz
cp ./mattermost/bin/platform /bin/platform
