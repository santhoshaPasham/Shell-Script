#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

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
    echo -e "$2 is $R failure $N"
    exit 1
else 
    echo -e "$2 is $G success $N"
fi
}


for i in $@
do 
    echo "Installing the package $i"
    dnf list installed $i
    if [ $? -eq 0 ]
    then
        echo -e "installation ..$G Success $N"
    else 
        echo -e "Installation.. $R Failure $N"

    dnf install $i -y 
    VALIDATE $i "Installing $i"
done