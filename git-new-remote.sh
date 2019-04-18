#!bin/bash

# take in new remote name
REMOTE_NAME=$1
# take in new remote address
REMOTE_URL=$2

# if arguments are missing, inform the user
if [ -z "$REMOTE_NAME" ] || [ -z "$REMOTE_URL" ]
then
	echo "
	Argument Missing(s). Please provide a remote name and a remote url in this format:
	
	git-new-remote remote-name remote-url
	"

else
# create configs when proper arguments are received
	NEW_CONFIG="\n[remote \""$REMOTE_NAME\""]\n\turl = $REMOTE_URL\n\tfetch = +refs/heads/*:refs/remotes/origin/*
	"

	echo -e $NEW_CONFIG >> .git/config

	echo "
	Your repo has this as a new remote for $REMOTE_NAME: 

	$NEW_CONFIG
	"

fi