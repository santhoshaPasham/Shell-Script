#!/bin/bash

echo "All variables: $@"
echo "Number of variables passed : $#"
echo "script name: $0"
echo "Current working directory is $PWD"
echo "Home  directory of current user is $HOME"
echo "which user is running the script is $USER"
echo "Hostname: $HOSTNAME"
echo "process id of the current shell script: $$"
sleep 60 