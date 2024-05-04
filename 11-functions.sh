#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%S)
SCRIPTNAME=$( echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log

if [ $USERID -ne 0 ]
then 
    echo "Please run this command with root access"
    exit 1
else
    echo "you are super user"
fi 


VALIDATE(){
if [ $1 -ne 0 ]
then 
    echo "$2 is failure"
    exit 1
else 
    echo "$2 is success"
fi

}

dnf install mysql -y 

VALIDATE $? "Installing mysql"

dnf install git -y 

VALIDATE $? "Installing git"

echo "is script proceeding" 
