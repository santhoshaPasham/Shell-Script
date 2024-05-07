#!/bin/bash

set -e 

#!/bin/bash

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