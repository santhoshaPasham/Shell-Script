#!/bin/bash

Course="Devops from current script"

echo "process Id of the current script: $$"
echo  "$Course"

source ./14-otherscript.sh

echo "$Course"


