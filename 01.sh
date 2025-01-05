#!/bin/bash

#automating the web instances 
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-TIMESTAMP.log"

if [ $ID  -ne  0 ]
then 
    echo "please make it as root user"
    exit 1
else
    echo "root user"
fi    


VALIDATE()
{
    if [ $1 -ne 0 ]
    then 
        echo "$2 is success"
    else
        echo "$2 is failed"
    fi
}


dnf install nginx -y &>> LOGFILE
VALIDATE $? "installing nginx"

# systemctl enable nginx
# systemctl start nginx