#!/bin/bash

set -e 

failure(){
    echo "Failed at $1: $2"
}

trap 'failure ${LINENO} "$BASH_COMMAND"' ERR


USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Please run this command with rot access"
    exit 1
else
    echo "you are super user"
fi 

dnf install myysql -y 
dnf install git -y 


echo "is script proceeding" 