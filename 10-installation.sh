#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Please run this command with rot access"
    exit 1
else
    echo "you are super user"
fi 

dnf install mysql -y 

if [ $? -ne 0 ]
then 
    echo "Mysql installation is failure"
    exit 1
else 
    echo "Installation of mysql is success"
fi 

dnf install git -y 

if [ $? -ne 0 ]
then 
    echo "Git installation is failure"
    exit 1
else 
    echo "Git installation is success"
fi

echo "is script proceeding" 
