#!bin/bash

# take in new remote name
REMOTE_NAME=$1
# take in new remote address
REMOTE_URL=$2

# write new remote settings to .git/config

NEW_CONFIG="[remote \""$REMOTE_NAME\""]
	url = $REMOTE_URL
	fetch = +refs/heads/*:refs/remotes/origin/*
"

echo $NEW_CONFIG > .git/config

echo "
Your repo has this as a new remote for $REMOTE_NAME: 

$NEW_CONFIG
"